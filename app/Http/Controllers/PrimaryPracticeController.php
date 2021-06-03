<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Hash;
use Session;
use Image;
class PrimaryPracticeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   
    public function index()
    {
        $allContents = DB::table('lawyer_primary_practice_masters')->select('lawyer_primary_practice_masters.*')->OrderBy('id','desc')->get();
        return view('primaryPractice.list', [ 
            'allContents' => $allContents
        ]);
    }
    public function add()
    {
        return view('primaryPractice.add');
    }
    public function doadd(Request $request)
    {
        $title = $request->title;
        $status = $request->status;
        $primary_image = $request->file('primary_image');
        if($request->hasFile('primary_image')){
            $allowed_image_types = ['jpg','jpeg','png'];
                $filename = $primary_image->getClientOriginalName();
                $ext = strtolower($primary_image->getClientOriginalExtension());
                $file_type = $primary_image->getMimeType();
                
                if (in_array($ext, $allowed_image_types))
                {
                    $primary_image_a = time().$filename;
                    // $mediumthumbnailpath = public_path('/assets/uploades/contents/thumb/'.$primary_image_a);
                    // $this->createThumbnail($mediumthumbnailpath, 300, 185);
                    Image::make($primary_image)->resize(300, null, function ($constraint) {$constraint->aspectRatio();})->save( public_path('/assets/uploades/primary_practice/thumb/' . $primary_image_a) );
                }
                
                DB::table('lawyer_primary_practice_masters')->insert(
                    [
                        'name'=> $title,
                        'image' => $primary_image_a,
                        'status'=> $status
                    ]
                    );
                Session::flash('message', 'created successfully!'); 
                Session::flash('alert-class', 'alert-success'); 
        }else{
                Session::flash('message', 'Image is not there'); 
                Session::flash('alert-class', 'alert-danger'); 
        }
        return redirect()->route('primary_practice.list');
    }
    public function delete($id){
        DB::table('lawyer_primary_practice_masters')->where('id', $id)->delete();
        Session::flash('message', 'Deleted Successfully'); 
        Session::flash('alert-class', 'alert-danger'); 
        return redirect()->route('primary_practice.list');
    }
    public function edit($content_id){
        $primary_practice = DB::table('lawyer_primary_practice_masters')->select('lawyer_primary_practice_masters.*')->Where('id',$content_id)->first();
        return view('primaryPractice.edit', [ 
            'Content' => $primary_practice
        ]);
    }

    public function doedit(Request $request){
        $title = $request->title;
        $primary_practice_id = $request->primary_practice_id;
        $status = $request->status;
        $primary_image = $request->file('primary_image');
        if($request->hasFile('primary_image')){
            $allowed_image_types = ['jpg','jpeg','png'];
                $filename = $primary_image->getClientOriginalName();
                $ext = strtolower($primary_image->getClientOriginalExtension());
                $file_type = $primary_image->getMimeType();
                
                if (in_array($ext, $allowed_image_types))
                {
                    $primary_image_a = time().$filename;
                    // $mediumthumbnailpath = public_path('/assets/uploades/contents/thumb/'.$primary_image_a);
                    // $this->createThumbnail($mediumthumbnailpath, 300, 185);
                    Image::make($primary_image)->resize(300, null, function ($constraint) {$constraint->aspectRatio();})->save( public_path('/assets/uploades/primary_practice/thumb/' . $primary_image_a) );
                    DB::table('lawyer_primary_practice_masters')
                    ->where('id', $primary_practice_id)
                    ->update(
                        [
                            'name'=> $title,
                            'image' => $primary_image_a,
                            'status'=> $status
                        ]
                        );
                }else{
                    Session::flash('message', 'Valid Image plaese!'); 
                    Session::flash('alert-class', 'alert-denger'); 
                    return redirect()->route('primary_practice.list');
                }
        }else{
            DB::table('lawyer_primary_practice_masters')
            ->where('id', $primary_practice_id)
            ->update(
                [
                    'name'=> $title,
                    'status'=> $status
                ]
                );
        }
        Session::flash('message', 'Updated successfully!'); 
        Session::flash('alert-class', 'alert-success'); 
        return redirect()->route('primary_practice.list');
    }

    // public function createThumbnail($path, $width, $height)
    // {
    //     $img = Image::make($path)->resize($width, $height, function ($constraint) {
    //         $constraint->aspectRatio();
    //     });
    //     $img->save($path);
    // }
}
