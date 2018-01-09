<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Rent;
use App\Property;

use Response;
use Input;
use DB;

class RentsController extends Controller
{
    public function __construct(){
        $this->middleware('jwt.auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);

        if ($search_term) {
            // something here in the future...
        }
        else
        {
            $rent = Rent::orderBy('id', 'DESC')->with(
                array(
                    'Property'=>function($query){
                        $query->select('id','code');
                    }
                )
            )->select('id', 
                'property_id',
                'analysed_rent',
                'analysed_date',
                'remarks'
            )->paginate($limit); 

            $rents->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($rent), 200);
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
        $rent = Rent::with(
            array('Property'=>function($query){
                $query->select('id','code');
            })
            )->find($id);
        if(!$rent){
            return Response::json([
                'error' => [
                    'message' => 'Data does not exist'
                ]
            ], 404);
        }

         // get previous Rent id
        $previous = Rent::where('id', '<', $rent->id)->max('id');

        // get next Rent id
        $next = Rent::where('id', '>', $rent->id)->min('id');

        

        return Response::json([
            'previous_Rent_id'=> $previous,
            'next_Rent_id'=> $next,
            'data' => $rent
        ], 200);
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
