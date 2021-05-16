<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Hash;
use Session;
use Image;
class ContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
   
    public function index()
    {
        $allContents = DB::table('content')->select('content.*')->OrderBy('content_id','desc')->get();
        return view('contents.list', [ 
            'allContents' => $allContents
        ]);
    }
    public function add()
    {
        return view('contents.add');
    }
    public function doadd(Request $request)
    {
        $title = $request->title;
        $description = $request->content_desc;
        $status = $request->status;
        $content_image = $request->file('content_image');
        if($request->hasFile('content_image')){
            $allowed_image_types = ['jpg','jpeg','png'];
                $filename = $content_image->getClientOriginalName();
                $ext = strtolower($content_image->getClientOriginalExtension());
                $file_type = $content_image->getMimeType();
                
                if (in_array($ext, $allowed_image_types))
                {
                    $content_image_a = time().$filename;
                    // $mediumthumbnailpath = public_path('/assets/uploades/contents/thumb/'.$content_image_a);
                    // $this->createThumbnail($mediumthumbnailpath, 300, 185);
                    Image::make($content_image)->resize(300, 300)->save( public_path('/assets/uploades/contents/thumb/' . $content_image_a) );
                }
                
                DB::table('content')->insert(
                    [
                        'title'=> $title,
                        'description'=> $description,
                        'image' => $content_image_a,
                        'status'=> $status
                    ]
                    );
                Session::flash('message', 'Contents created successfully!'); 
                Session::flash('alert-class', 'alert-success'); 
        }else{
                Session::flash('message', 'Image is not there'); 
                Session::flash('alert-class', 'alert-error'); 
        }
        return redirect()->route('content.list');
    }
    public function delete($id){
        DB::table('content')->where('content_id', $id)->delete();
        Session::flash('message', 'Deleted Successfully'); 
        Session::flash('alert-class', 'alert-danger'); 
        return redirect()->route('content.list');
    }
    public function edit($content_id){
        $Content = DB::table('content')->select('content.*')->Where('content_id',$content_id)->first();
        return view('contents.edit', [ 
            'Content' => $Content
        ]);
    }

    public function doedit(Request $request){
        $title = $request->title;
        $content_id = $request->content_id;
        $description = $request->content_desc;
        $status = $request->status;
        $content_image = $request->file('content_image');
        if($request->hasFile('content_image')){
            $allowed_image_types = ['jpg','jpeg','png'];
                $filename = $content_image->getClientOriginalName();
                $ext = strtolower($content_image->getClientOriginalExtension());
                $file_type = $content_image->getMimeType();
                
                if (in_array($ext, $allowed_image_types))
                {
                    $content_image_a = time().$filename;
                    // $mediumthumbnailpath = public_path('/assets/uploades/contents/thumb/'.$content_image_a);
                    // $this->createThumbnail($mediumthumbnailpath, 300, 185);
                    Image::make($content_image)->resize(300, null, function ($constraint) {$constraint->aspectRatio();})->save( public_path('/assets/uploades/contents/thumb/' . $content_image_a) );
                    
                    DB::table('content')
                    ->where('content_id', $content_id)
                    ->update(
                        [
                            'title'=> $title,
                            'description'=> $description,
                            'image' => $content_image_a,
                            'status'=> $status
                        ]
                        );
                }else{
                    Session::flash('message', 'Valid Image plaese!'); 
                    Session::flash('alert-class', 'alert-denger'); 
                    return redirect()->route('content.list');
                }
        }else{
            DB::table('content')
            ->where('content_id', $content_id)
            ->update(
                [
                    'title'=> $title,
                    'description'=> $description,
                    'status'=> $status
                ]
                );
        }
        Session::flash('message', 'Contents Updated successfully!'); 
        Session::flash('alert-class', 'alert-success'); 
        return redirect()->route('content.list');
    }

    // public function createThumbnail($path, $width, $height)
    // {
    //     $img = Image::make($path)->resize($width, $height, function ($constraint) {
    //         $constraint->aspectRatio();
    //     });
    //     $img->save($path);
    // }
}
