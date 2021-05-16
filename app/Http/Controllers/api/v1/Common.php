<?php

namespace App\Http\Controllers\api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\lawyer\Lawyer_primary_practice_master;
use App\User;
use URL;
use DB;
use Redirect, \Validator;
use App\Library\config_inc;


class Common extends Controller
{
    protected $_common;
    
    function __construct(){
        $this->_common = new Config_inc;
    }
    public function getLawyerPrimaryPracticeList(){
        //dd(uniqid());
        $getPracticeMaster = Lawyer_primary_practice_master::select('id','name','image')->where('status', 1)->orderBy('show_order','ASC')->get();
        $arrayList =[];
        $i = 0;
        foreach($getPracticeMaster as $getPracticeMasterAll){
            $arrayList[$i]['id'] = $getPracticeMasterAll->id;
            $arrayList[$i]['name'] = $getPracticeMasterAll->name;
            $arrayList[$i]['image'] = URL::to('/assets/uploades/primary_practice/thumb/'.$getPracticeMasterAll->image);
            $i++;
        }
        return response()->json([
            'status' => 1,
            'data' => [
                'list'=> $arrayList
            ]
        ], 200);
    }
    public function getFeaturedLawyer(){
        DB::statement("SET sql_mode = '' ");
        $getlawyerlist = DB::select("Select U.id as lawyer_id, U.name, U.mobile_no, U.city, U.gender, U.email, 
        U.image, COALESCE(LD.year_of_experience,0) as experience , FORMAT(COALESCE(AVG(R.rating),0),1) as avg_rating,
         count(R.rating) as no_of_ratings FROM users as U left join review_ratings as R ON U.id = R.user_id 
         left join model_has_roles ON model_has_roles.model_id = U.id 
         left join lawyer_details LD ON LD.user_id = U.id Where U.status = 1 
         AND model_has_roles.role_id = 2 GROUP BY U.id 
         ORDER BY `avg_rating` DESC
         LIMIT 5
        ");
            foreach($getlawyerlist as $key => $value)
            {
                $profilePic = $value->image;
                if($profilePic == ''){
                    $profilePic = 'default.png';
                }
            $getlawyerlist[$key]->image = URL::to('/assets/uploades/profile/thumb/'.$profilePic);
            }
                       
        return response()->json([
            'status' => 1,
            'message' => 'success',
            'data' => [
                'featured_lawyer'=> $getlawyerlist
            ]
        ], 200);
    }
    public function LawyersList(Request $request){
        $searchParam = $request->searchParam;
        $searchValue = $request->searchValue;
        
        DB::statement("SET sql_mode = '' ");
        $sqlStatement = '';
        $sqlStatement .= "Select U.id as lawyer_id, U.name, U.mobile_no, U.city, U.gender, U.email, 
        U.image, COALESCE(LD.year_of_experience,0) as experience , FORMAT(COALESCE(AVG(R.rating),0),1) as avg_rating,
         count(R.rating) as no_of_ratings FROM users as U left join review_ratings as R ON U.id = R.user_id 
         left join model_has_roles ON model_has_roles.model_id = U.id 
         left join lawyer_details LD ON LD.user_id = U.id 
         Where U.status = 1"; 
         if($searchParam && $searchValue){
            $sqlStatement .=" AND find_in_set($searchValue,LD.".$searchParam.") <> 0";
         }
         $sqlStatement .=" AND model_has_roles.role_id = 2 
         GROUP BY U.id 
         ORDER BY `avg_rating` DESC
        ";
        
        $getlawyerlist = DB::select($sqlStatement);
            foreach($getlawyerlist as $key => $value)
            {
                $profilePic = $value->image;
                if($profilePic == ''){
                    $profilePic = 'default.png';
                }
            $getlawyerlist[$key]->image = URL::to('/assets/uploades/profile/thumb/'.$profilePic);
            }
                       
        return response()->json([
            'status' => 1,
            'message' => 'success',
            'data' => [
                'featured_lawyer'=> $getlawyerlist
            ]
        ], 200);
    }
    public function getDashboradContent(){
        
        $allContents = DB::table('content')->select('content.title','content.description','content.image')->Where('status',1)->OrderBy('content_id','desc')->get();               
        foreach($allContents as $key => $value)
        {
            $profilePic = $value->image;
            if($profilePic == ''){
                $profilePic = 'default.png';
            }
         $allContents[$key]->image = URL::to('/assets/uploades/contents/thumb/'.$profilePic);
        }
        return response()->json([
            'status' => 1,
            'data' => [
                'dashboard_contents'=> $allContents
            ]
        ], 200);
    }

    public function lawyer_details(Request $request){
        $validator   = Validator::make($request->all(),
                                        [
                                            'lawyer_id'   => 'required'
                                        ]);
        
        if($validator->fails()){
            $response['status'] = 0;
            $response['responseText'] = 'Invalid Input';
            $response['data'] = [];
        }
        else
        {
            $id = trim($request->lawyer_id);
            $hasLawyer = $this->_common->isUsersExist($id);
            if($hasLawyer)
            {
                $editInfo = User::Where('users.id',$id)
                        ->with('lawyer_details','ratings','ratings.customer','questionAnswer','questionAnswer.customer')
                        ->first();
                        
                        // return response()->json($editInfo);
                $courtArray = [];$primaryPracticeArray = [];$expertiseInfoArray=[];
                if($editInfo && $editInfo->lawyer_details && $editInfo->lawyer_details->court_id !==''){
                    $courtInfo = DB::table('court_master')
                                ->WhereIn('court_id',explode(',', $editInfo->lawyer_details->court_id))
                                ->select('court_master.name')
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
                $total_rating_count = count($editInfo->ratings);
                if($editInfo && $total_rating_count>0){
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
                            'image' => ($question_answer->customer->image!=='') ? URL::to('/assets/uploades/profile/thumb/'.$question_answer->customer->image) : URL::to('/assets/uploades/profile/thumb/default.png'),
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
                    'profile_pic' => URL::to('/assets/uploades/profile/thumb/'.$profilePic),
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
                    'total_rating_count'=>$total_rating_count,
                    'court_info'=> $courtArray,
                    'primary_practice_Info'=> $primaryPracticeArray,
                    'expertise_info'=> $expertiseInfoArray,
                    'review_rating' => $ratingArray,
                    'question_answer'=> $question_answerArray
                );

                    $response['status'] = 1;
                    $response['responseText'] = 'Success';
                    $response['data'] = $finalLawyerDetails;
            }else{
            $response['status'] = 0;
            $response['responseText'] = 'Error! User not exist.';
            $response['data'] =[];
            }
        }
        return response()->json($response);
    }

    public function editProfile(Request $request){
        $user_id = $request->user_id;
        $validator   = Validator::make($request->all(),
                                        [
                                            'user_id'   => 'required'
                                        ]);
        
        if($validator->fails()){
            $response['status_code'] = 0;
            $response['status'] = 'Invalid Input';
            $response['data'] = [];
        }
        else
        {
        $editInfo = User::Where('users.id',$user_id)
                        ->with('lawyer_details')
                        ->first();
        $primaryDetails = [
            'name' => $editInfo->name,
            'email' => $editInfo->email,
            'mobile_no' => $editInfo->mobile_no,
            'city' => $editInfo->city,
            'date_of_birth' => $editInfo->date_of_birth,
            'address'=> $editInfo->address,
            
        ];
        if($editInfo && $editInfo->lawyer_details){
            $primaryDetails['education'] = $editInfo->lawyer_details->education;
            $primaryDetails['year_of_experience'] = $editInfo->lawyer_details->year_of_experience;
            $primaryDetails['office_address'] = $editInfo->lawyer_details->office_address;
            $primaryDetails['profile_description'] = $editInfo->lawyer_details->profile_description;
            $primaryDetails['year_of_passing'] = $editInfo->lawyer_details->year_of_passing;
        }
        return response()->json([
            'status_code' => 1,
            'status' => 'Success',
            'data' => [
                'user' => $primaryDetails,
            ]
        ], 200);
    }
}
    
}
