<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use App\Media;
use App\Valuation;

use Response;
class PDFFixerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('pdf-fixer');
    }

    public function getBrokenMedia(Request $request) {
        $where = array(
            'source_table'=>'valuations',
            'source_id'=>0
        );
        $limit = $request['limit'];
        $media = Media::orderBy('id', 'ASC')->
            where($where)->
            select(
                'id',
                'source_id',
                'source_table',
                'file_mime',
                'file_name',
                'created_at'
            )->paginate($limit); 

            $media->appends(array(            
                'limit' => $limit
            ));
            // print_r($media);
        return Response::json($media, 200);
    }

    public function getBrokenValuation(Request $request) {
        try{
            $from = $request['media_created_at'];
            $to = date('Y-m-d H:i:s',strtotime($request['timeto'],strtotime($from)));
            $limit = 1000;
            $valuation = Valuation::orderBy('id', 'DESC')->
                whereBetween('created_at', [$from, $to])->
                select(
                    'id',
                    'created_at'
                )->paginate($limit); 

                $valuation->appends(array(            
                    'limit' => $limit
                ));
            return Response::json($valuation, 200);
        }
        catch(\Exception $e){
            return false;
        }
    }
    public function applyFix(Request $request) {
        try {
            $request['query'];
            DB::unprepared($request['query']);
            return 'success';
        }
        catch(\Exception $e){
            echo $e->getMessage();
        }
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
    public function store(Request $request)
    {
        //
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
