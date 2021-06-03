<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Hash;
use Session;
use Image;
use URL; 
class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index()
    {
        //$allCustomers = User::where('name', '!=' ,'admin')->orderBy('created_at','DESC')->get();
        $allCustomers = DB::table('model_has_roles')
                        ->join('users', 'users.id', '=', 'model_has_roles.model_id')
                        ->where('model_has_roles.role_id','=',3)
                        ->where('users.is_deleted','=','N')
                        ->select('users.*')
                        ->orderBy('users.created_at','DESC')
                        ->get();
        return view('customer.list', [ 
            'allCustomers' => $allCustomers
        ]);
    }
    public function lawyer_list()
    {
        //$allCustomers = User::where('name', '!=' ,'admin')->orderBy('created_at','DESC')->get();
        $allCustomers = DB::table('model_has_roles')
                        ->join('users', 'users.id', '=', 'model_has_roles.model_id')
                        ->where('model_has_roles.role_id','=',2)
                        ->select('users.*')
                        ->get();
        return view('customer.lawyerlist', [ 
            'allCustomers' => $allCustomers
        ]);
    }

    public function createForm()
    {
        $allCitys = City::orderBy('city','ASC')->get();
        return view('customer.createForm',['allCitys'=>$allCitys]);
    }

    public function store(Request $request)
    {
        $first_name = $request->first_name;
        $last_name = $request->last_name;
        $c_city = $request->c_city;
        $c_email = $request->c_email;
        $c_password = $request->c_password;

        if(User::where('email',$c_email)->count() == 0){
            User::create(
                [
                    'first_name'=> $first_name,
                    'last_name'=> $last_name,
                    'name' => $first_name.' '.$last_name,
                    'city_id'=> $c_city,
                    'email'=> $c_email,
                    'password'=> Hash::make($c_password)
                ]
                );
            Session::flash('message', 'Customer created successfully!'); 
            Session::flash('alert-class', 'alert-success'); 
        }
        else{
            Session::flash('message', 'Email already exist!'); 
            Session::flash('alert-class', 'alert-danger'); 
        }
        return redirect()->route('customer.list');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function show(Photo $photo)
    {
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {
        $editInfo = User::Where('users.id',$id)->first();
        return view('customer.editForm',compact('editInfo'));
    }
    public function editlawyer($id) {
        $editInfo = User::Where('users.id',$id)
                    ->with('lawyerDetails','ratings','ratings.customer','questionAnswer','questionAnswer.customer')
                    ->first();
                    // echo json_encode($editInfo);die; 
        $courtArray = [];$primaryPracticeArray = [];$expertiseInfoArray=[];
        if($editInfo && $editInfo->lawyer_details && $editInfo->lawyer_details->court_id !==''){
            $courtInfo = DB::table('court_masters')
                        ->WhereIn('id',explode(',', $editInfo->lawyer_details->court_id))
                        ->select('court_masters.name')
                        ->get();
            $courtInfo = $courtInfo->toArray();
            
            foreach($courtInfo as $b){
                array_push($courtArray,$b->name);
            }
        }
        
        if($editInfo && $editInfo->lawyer_details && $editInfo->lawyer_details->primary_practice_id !==''){
            $primaryPracticeInfo = DB::table('lawyer_primary_practice_masters')
                        ->WhereIn('id',explode(',', $editInfo->lawyer_details->primary_practice_id))
                        ->get();
            $primaryPracticeInfo = $primaryPracticeInfo->toArray();
            
            foreach($primaryPracticeInfo as $b){
                array_push($primaryPracticeArray,$b->name);
            }
        }
        
        if($editInfo && $editInfo->lawyer_details && $editInfo->lawyer_details->expertise_id !==''){
            $expertiseInfo = DB::table('expertise_master')
                        ->WhereIn('expertise_id',explode(',', $editInfo->lawyer_details->expertise_id))
                        ->get();
            $expertiseInfo = $expertiseInfo->toArray();
            
            foreach($expertiseInfo as $b){
                array_push($expertiseInfoArray,$b->name);
            }
        }
        
        $avg_rating = 0;
        $ratingArray = [];
        if($editInfo && count($editInfo->ratings)>0){
            $i=0;$sum=0;
            foreach($editInfo->ratings as $allRatings){
                $arrRating=[
                    'rating_given_by' =>$allRatings->customer->name,
                    'rating' =>$allRatings->rating,
                    'description' =>$allRatings->description,
                    'on' => date_format($allRatings->created_at,"Y/m/d H:i:s"),
                ];
                array_push($ratingArray,$arrRating);
                $sum = $sum + $allRatings->rating;
                $i++;

            }
            if($i !== 0){ $avg_rating = ($sum / $i); }
            
        }
       
        $question_answerArray = [];
        if($editInfo && $editInfo->questionAnswer){
            foreach($editInfo->questionAnswer as $question_answer){
                $arrquestion_answer=[
                    'asked_by' =>$question_answer->customer->name,
                    'question' =>$question_answer->question,
                    'answer' =>$question_answer->answer,
                    'on' => date_format($question_answer->created_at,"Y/m/d H:i:s"),
                ];
                array_push($question_answerArray,$arrquestion_answer);
            }
            
        }
        $profilePic = $editInfo->image;
        if($editInfo->image == ''){
            $profilePic = 'default.png';
        }
        $primaryDetails=[
            'name' => $editInfo->name,
            'profile_pic' => URL::to('/public/assets/uploades/profile/thumb/'.$profilePic),
            'email' => $editInfo->email,
            'mobile_no' => $editInfo->mobile_no,
            'city' => $editInfo->city,
            'date_of_birth' => $editInfo->date_of_birth,
            'address'=> $editInfo->address,
            'latitude' => $editInfo->latitude,
            'longitude' => $editInfo->longitude,
            'education' => '',
            'year_of_experience'=> '',
            'office_address'=> '',
            'profile_description'=> '',
            'year_of_passing'=> ''
        ];
        $lawyerDetails = [];
        if($editInfo && $editInfo->lawyer_details){
            $primaryDetails['education'] = $editInfo->lawyer_details->education;
            $primaryDetails['year_of_experience'] = $editInfo->lawyer_details->year_of_experience;
            $primaryDetails['office_address'] = $editInfo->lawyer_details->office_address;
            $primaryDetails['profile_description'] = $editInfo->lawyer_details->profile_description;
            $primaryDetails['year_of_passing'] = $editInfo->lawyer_details->year_of_passing;
        }
        
        
        $finalLawyerDetails[0]= (object) array(
            'primary_details'=>$primaryDetails,
            'avg_rating'=>$avg_rating,
            'court_info'=> $courtArray,
            'primary_practice_Info'=> $primaryPracticeArray,
            'expertise_info'=> $expertiseInfoArray,
            'review_rating' => $ratingArray,
            'question_answer'=> $question_answerArray
        );
        //echo(json_encode($finalLawyerDetails));die;
        return view('customer.editForm', compact('finalLawyerDetails'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */

    public function delete($id){
        DB::table('users')
        ->where('id', $id)
        ->update(
            [
                'is_deleted'=> 'Y'
            ]
            );
            Session::flash('message', 'Deleted successfully!'); 
            Session::flash('alert-class', 'alert-success');
            return redirect()->route('customer.list');
     }
    public function update(Request $request)
    {
        error_reporting(E_ALL);
        ini_set("display_errors", 1);
        $lawyer_id = $request->lawyer_id;
        $lawyer_image = $request->file('lawyer_image');
        if($request->hasFile('lawyer_image')){
            $allowed_image_types = ['jpg','jpeg','png'];
                $filename = $lawyer_image->getClientOriginalName();
                $ext = strtolower($lawyer_image->getClientOriginalExtension());
                $file_type = $lawyer_image->getMimeType();
                
                if (in_array($ext, $allowed_image_types))
                {
                   $lawyer_image_a = time().$filename;
                    // $mediumthumbnailpath = public_path('/assets/uploades/contents/thumb/'.$lawyer_image_a);
                    // $this->createThumbnail($mediumthumbnailpath, 300, 185);
                    Image::make($lawyer_image)->resize(300, null, function ($constraint) {$constraint->aspectRatio();})->save( public_path('/assets/uploades/profile/thumb/' . $lawyer_image_a) );
                }
                die;
                DB::table('users')
                ->Where('id',$lawyer_id)
                ->update(
                    [
                        'image' => $lawyer_image_a,
                    ]
                );
                Session::flash('message', 'Updated successfully!'); 
                Session::flash('alert-class', 'alert-success'); 
            }
            return redirect()->route('customer.lawyer-list');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Photo  $photo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Photo $photo)
    {
        //
    }
}
