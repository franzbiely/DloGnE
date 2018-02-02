<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\Rental;
use App\RentalMaintenance;
use App\RentalRatingsTier;

class RentalRatingTiersController extends Controller
{
    // public function __construct(){
    //     $this->middleware('jwt.auth');
    // }
    private $title = "Rental Inclusion Tier";
    private function transformCollection($data){
        return array_map([$this, 'transform'], $data->toArray());
    }
    private function transform($data){
        return [
                'id' => $data['id'],
                'rental_id' => $data['rental_id'],
                'rental_inclusion_id' => $data['rental_inclusion_id'],
                'rate' => $data['rate'],
                'rental_maintenance_id' => $data['rental_maintenance_id']
            ];
    }
    public function index() {
        $data = RentalRatingsTier::orderBy('id')->get();
        return Response::json([
            'data' => $this->transformCollection($data)
        ], 200);
    }
    public function show($id) {
        $data = RentalRatingsTier::find($id);
 
        if(!$data){
            return Response::json([
                'error' => []
            ], 404);
        }
 
        return Response::json([
                'data' => $this->transform($data)
        ], 200);
    }

    // ============== [ Insert ] ================================
    public function store(Request $request) {
        if(! $request->title ){
            return Response::json([
                'error' => [
                    'message' => 'Please provide title'
                ]
            ], 422);
        }
        $data = RentalRatingsTier::create($request->all());
        return Response::json([
                'message' => $this->title . ' Created Succesfully',
                'data' => $this->transform($data)
        ]);
    }
    // ============== [ / Insert ] ================================


    // ============== [ Update ] ================================

    public function update(Request $request, $id) {
        if(! $request->title ){
            return Response::json([
                'error' => [
                    'message' => 'Please provide title'
                ]
            ], 422);
        }
        
        $data = RentalRatingsTier::find($id);
        $data->title = $request->title;
        $data->save(); 
 
        return Response::json([
                'message' => $this->title . ' '. $id .' Updated Succesfully'
        ]);
    }

    // ============== [ / Update ] ================================

    // ============== [ Delete ] ================================

    public function destroy($id) {
        RentalRatingsTier::destroy($id);
        return Response::json([
            'message' => $this->title . ' '. $id .' Deleted Succesfully'
        ]);
    }

    // ============== [ / Delete ] ================================
}
