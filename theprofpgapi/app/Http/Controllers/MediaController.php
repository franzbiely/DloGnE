<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Property;
use App\Media;
use App\Sale;

use Response;
use Input;

class MediaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function foo() {
        echo "FOO";
    }
    public function getByParam(Request $request, $params) {
        $limit = $request->input('limit', 100);

        parse_str($params, $ret);
        $where = [];
        foreach($ret as $key=>$val) {
            if(isset($val))
                $where[$key] = $val;
        };
        
        $media = Media::orderBy('id', 'DESC')->
            where($where)->
            select(
                'id',
                'file_name',
                'file_size',
                'file_mime',
                'file_path',
                'source_id',
                'source_table',
                'media_type'
            )->paginate($limit); 

            $media->appends(array(            
                'limit' => $limit
            ));
        // return $media["data"];
        // if(count($media)==1) {
        //     return Response::json([$media[0]], 200);        
        // }
        // elseif(count($media) > 1) {
            return Response::json($media, 200);
        // }
    }
    public function store(Request $request)
    {   
        if(null !== $request->file('photo')) {
            $file = $request->file('photo');    
            $dest = 'uploads/photo/';
        }
        else {
            $file = $request->file('files');
            $dest = 'uploads/file/';
        }
        $filename = uniqid() . $file->getClientOriginalName();
        $file->move($dest, $filename);
        
        $media = Media::create([
            'file_name' => $filename,
            'file_size' => $file->getClientSize(),
            'file_mime' => $file->getClientMimeType(),
            'file_path' => $dest . $filename,
            'source_id' => $request->source_id,
            'source_table' => $request->source_table,
            'media_type' => $request->media_type
        ]);

        return Response::json([
                'message' => 'Media created succesfully',
                'data' => $media
        ]);
    }
    public function update_source_id($media_id, $source_id) {
        try{
            $media = Media::find($media_id);
            $media->source_id = $source_id;
            $media->save(); 
        }
        catch(\Exception $e){
            echo $e->getMessage();
        }
    }

    public function remove_image_by_propertyID($property_id, $excemption) {
        $media = Media::where('source_id','=',$property_id)
                    ->where('source_table','=','properties')
                    ->where('file_mime','LIKE','%image%')
                    ->whereNotIn('id', $excemption)->delete();
    }
    public function remove_pdf_by_propertyID($property_id, $excemption) {
        $media = Media::where('source_id','=',$property_id)
                    ->where('source_table','=','properties')
                    ->where('file_mime','LIKE','%pdf%')
                    ->whereNotIn('id', $excemption)->delete();
    }

    public function remove_attached_by_propertyID($property_id) {
        $where = [
            'source_id' => $property_id,
            'source_table' => 'properties',
            'media_type' => 'attached'
        ];
        $media = Media::where($where)->delete();
    }
    public function remove_image_by_salesID($sales_id, $excemption) {
        $media = Media::where('source_id','=',$sales_id)
                    ->where('source_table','=','sales')
                    ->where('file_mime','LIKE','%image%')
                    ->whereNotIn('id', $excemption)->delete();
    }
    public function remove_pdf_by_salesID($sales_id, $excemption) {
        $media = Media::where('source_id','=',$sales_id)
                    ->where('source_table','=','sales')
                    ->where('file_mime','LIKE','%pdf%')
                    ->whereNotIn('id', $excemption)->delete();
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
