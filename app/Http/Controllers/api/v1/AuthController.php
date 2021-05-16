<?php
namespace App\Http\Controllers\api\v1;

require __DIR__.'/../../../../../vendor/autoload.php';

use Twilio\Rest\Client;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Validator;
use App\User;
use App\Models\lawyer\Lawyer_detail;
use App\Models\lawyer\Lawyer_primary_practice;
use Illuminate\Support\Facades\Password;
use App\Models\modelHasRoles;


class AuthController extends Controller
{
    public function login(Request $request){
        $validator = Validator::make($request->all(), [
            'email'=>'required',
            'password'=>'required'
        ]);
        if (!$validator->fails()) {
            if(Auth::attempt(['email' => $request->email, 'password' => $request->password])){
                if($request->latitude!=='' && $request->longitude!==''){
                    DB::table('users')
                    ->where('email', $request->email)
                    ->update([
                        'current_latitude'=> $request->latitude,
                        'current_longitude'=>$request->longitude
                    ]);
                }
                $accessToken = Auth::user()->createToken('authToken')->accessToken;
                return response()->json([
                    'status_code' => 1,
                    'status' => 'User successfully logged in',
                    'data' => [
                        'user' => Auth::user(),
                        'access_token' => $accessToken
                    ]
                ], 200);
            }
            else{
                return response()->json(
                    [
                        'status' => 0,
                        'message' => 'Please recheck login id or password'
                    ],
                    200
                );
            }
        }
        else{
            return response()->json(
                [
                    'status' => 0,
                    'message' => 'Failed to login',
                    'validations' => $validator->errors()
                ],
                200
            );
        }
    }

    public function Registration(Request $request){
        if($request->role == 2){
            $validator = [
                'name' => 'required',
                'email'=>'required',
                'mobile_no' => 'required',
                'password'=>'required',
                'gender' => 'required', // F or M
                'date_of_birth' => 'required|date',
                'city'=>'required',
                'latitude' =>'required',
                'longitude' => 'required',
                'education' =>'required',
                'year_of_experience'=>'required',
                'primary_practice_id'=>'required',
                'office_address'=>'required',
                'court_id'=>'required',
                'enroll_number'=>'required',
                'year_of_passing'=>'required',
            ];
            $dateOfBirth = $request->date_of_birth;
        }else{
            $validator = [
                'name' => 'required',
                'email'=>'required',
                'mobile_no' => 'required',
                'password'=>'required',
                'gender' => 'required', // F or M
                'city'=>'required',
                'latitude' =>'required',
                'longitude' => 'required'
            ];
            $dateOfBirth = '';
        }
        
        $validator = Validator::make($request->all(),  $validator);

        if (!$validator->fails()) {
            $emailExistOrNot = User::where('email', $request->email)->where('status', 1)->first();
            $phoneNoExistOrNot = User::where('mobile_no', $request->mobile_no)->where('status', 1)->first();                        
            if($phoneNoExistOrNot){
                return response()->json(
                    [
                        'status' => 0,
                        'message' => 'Given contact number already exists'
                    ],
                    200
                );
            }
            if($emailExistOrNot){
                return response()->json(
                    [
                        'status' => 0,
                        'message' => 'Given Email id already exist'
                    ],
                    200
                );
            }
            if(!$emailExistOrNot && !$phoneNoExistOrNot){

                if($request->role==2){
                    // return response()->json($request);die;
                    $user = User::create([
                        'first_name' => $request->name,
                        'name' => $request->name,
                        'email' => $request->email,
                        'mobile_no' => $request->mobile_no,
                        'password' => Hash::make($request->password),
                        'gender' => $request->gender,
                        'date_of_birth' => date('Y-m-d',strtotime($dateOfBirth)),
                        'city' => $request->city,
                        'uniqid_val' => uniqid(),
                        'latitude'=> $request->latitude,
                        'longitude'=>$request->longitude,
                        'status'=> 1
                    ]);
                    DB::enableQueryLog();
                    $createLawyerDetails = Lawyer_detail::create([
                        'user_id' => $user->id,
                        'education' => $request->education,
                        'year_of_experience' => $request->year_of_experience,
                        'office_address' => $request->office_address,
                        'court_id' => $request->court_id,
                        'enroll_number' => $request->enroll_number,
                        'primary_practice_id' => $request->primary_practice_id,
                        'year_of_passing' => $request->year_of_passing
                    ]);
                   // return response()->json(DB::getQueryLog());die;
                }else{
                    $user = User::create([
                        'first_name' => $request->name,
                        'name' => $request->name,
                        'email' => $request->email,
                        'mobile_no' => $request->mobile_no,
                        'password' => Hash::make($request->password),
                        'gender' => $request->gender,
                        'date_of_birth' => date('Y-m-d',strtotime($dateOfBirth)),
                        'city' => $request->city,
                        'uniqid_val' => uniqid(),
                        'latitude'=> $request->latitude,
                        'longitude'=>$request->longitude,
                        'status'=> 1
                    ]);
                }
                    
                    $modelType='Admin';
                    if($request->role==2){$modelType = 'Lawyer';}else{$modelType = 'Customer';}
                    
                    $modelHasRoles = modelHasRoles::create([
                        'model_type'=> $modelType,
                        'role_id'=> $request->role,
                        'model_id'=> $user->id
                    ]);
                    

                    

                    return response()->json([
                        'status_code' => 1,
                        'status' => 'User Successfully registered',
                        'data' => [
                            'id' => $user->uniqid_val
                        ]
                    ], 200);
                
            }
            else{
                return response()->json(
                    [
                        'status' => 0,
                        'message' => 'Email or Mobile no already exist'
                    ],
                    200
                );
            }
        }
        else{
            return response()->json(
                [
                    'status' => 0,
                    'message' => 'Failed to register',
                    'validations' => $validator->errors()
                ],
                200
            );
        }
    }

    public function forgot_password(Request $request)
    {
        $input = $request->all();
        $rules = array(
            'email' => "required|email",
        );
        $validator = Validator::make($input, $rules);
        if ($validator->fails()) {
            $arr = array("status" => 0, "message" => $validator->errors()->first(), "data" => array());
        } else {
            try {
                // $response = Password::sendResetLink($request->only('email'), function (Message $message) {
                //     // $message->subject($this->getEmailSubject());
                //     $message->subject('Reset Password');
                // });
                $emailExistOrNot = User::where('email', $request->email)->where('status', 1)->first();
                if($emailExistOrNot){
                    $randPass = rand(00000000,99999999);
                    $details=[
                        'subject'=>'Reset Password',
                        'pass'=> $randPass
                    ];
                   \Mail::to($request->email)->send(new \App\Mail\LawyerMail($details));
                   $updatePassword = DB::table('users')
                   ->where('email', $request->email)
                   ->update(['password' => Hash::make($randPass)]);
                   return \Response::json(array("status" => 200, "message" => "a system generated password has been sent to your registered mail id.", "data" => array()));
                }else{
                    return \Response::json(array("status" => 400, "message" => "Invalid User", "data" => array()));
                }
               
                
                
            } catch (\Swift_TransportException $ex) {
                $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
            } catch (Exception $ex) {
                $arr = array("status" => 400, "message" => $ex->getMessage(), "data" => []);
            }
        }
        return response()->json($arr);
    }

    public function change_password(Request $request)
    {
        $old = $request->old_password;
        $new = $request->new_password;
        
    }
}