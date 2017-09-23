<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\AuditTrail;
use App\User;


use Response;
use Input;

class AuditTrailsController extends Controller
{
    public function __construct(){
        $this->middleware('jwt.auth');
    }

    public function index(Request $request)
    {
        $limit = $request->input('limit', 100);
        $audit_trails = AuditTrail::orderBy('id', 'DESC')->with(
            array(
                'User'=>function($query){
                    $query->select('id','name');
                }
            )
        )->select('id', 
            'log',
            'user_id',
            'created_at'
        )->paginate($limit); 

        $audit_trails->appends(array(            
            'limit' => $limit
        ));   
        return Response::json($this->transformCollection($audit_trails), 200);
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
        $data = AuditTrail::create($request->all());

        return Response::json([
                'message' => 'Data created succesfully',
                'data' => $this->transform($data)
        ]);
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
        AuditTrail::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    private function transformCollection($datas){
        $dataArray = $datas->toArray();
        return [
            'per_page' => intval($dataArray['per_page']),
            'current_page' => $dataArray['current_page'],
            'last_page' => $dataArray['last_page'],
            'next_page_url' => $dataArray['next_page_url'],
            'prev_page_url' => $dataArray['prev_page_url'],
            'from' => $dataArray['from'],
            'to' =>$dataArray['to'],
            'data' => array_map([$this, 'transform'], $dataArray['data'])
        ];
    }

    private function transform($audit_trail){
        return [
                'id' => $audit_trail['id'],
                'user' => $audit_trail['user']['name'],
                'log' => $audit_trail['log'],
                'created_at'=>$audit_trail['created_at']
        ];
    }
}
