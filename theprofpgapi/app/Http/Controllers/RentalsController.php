<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Rental;
use App\Property;

use Response;
use Input;
use DB;

class RentalsController extends Controller
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
            $rental = Rental::orderBy('id', 'DESC')->with(
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

            $rental->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($rental), 200);
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
        try {
            $rental = Rental::create($request->all());
        }
        catch(\Exception $e){
            return 'Error on inserting Rent details ' . $e->getMessage();
        }
        
        return Response::json([
                'message' => 'Data created succesfully',
                'data' => $this->transform($rental)
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
        $rental = Rental::with(
            array('Property'=>function($query){
                $query->select('id','code');
            })
            )->find($id);
        if(!$rental){
            return Response::json([
                'error' => [
                    'message' => 'Data does not exist'
                ]
            ], 404);
        }

         // get previous Rent id
        $previous = Rental::where('id', '<', $rental->id)->max('id');

        // get next Rent id
        $next = Rental::where('id', '>', $rental->id)->min('id');

        

        return Response::json([
            'previous_Rent_id'=> $previous,
            'next_Rent_id'=> $next,
            'data' => $rental
        ], 200);
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
        try {
            $rental = Rental::find($id);
            if(isset($request->analysed_rent)) $rental->analysed_rent = $request->analysed_rent;
            if(isset($request->analysed_date)) $rental->analysed_date = $request->analysed_date;
            if(isset($request->remarks)) $rental->remarks = $request->remarks;
            $rental->save(); 
        }
        catch(\Exception $e){
            return 'Error on updating Rent details  ' . $e->getMessage();
        }
        return Response::json([
                'message' => 'Data Updated Succesfully'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Rental::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    private function transformCollection($rental){
        $rentalArray = $rental->toArray();
        return [
            'per_page' => intval($rentalArray['per_page']),
            'current_page' => $rentalArray['current_page'],
            'last_page' => $rentalArray['last_page'],
            'next_page_url' => $rentalArray['next_page_url'],
            'prev_page_url' => $rentalArray['prev_page_url'],
            'from' => $rentalArray['from'],
            'to' =>$rentalArray['to'],
            'data' => array_map([$this, 'transform'], $rentalArray['data'])
        ];
    }

    private function transform($rental){
        return [
            'id' => $rental['id'],
            'property_id' => $rental['property_id'],
            'analysed_rent' => $rental['analysed_rent'],
            'analysed_date' => $rental['analysed_date'],
            'remarks' => $rental['remarks']
        ];
    }
}
