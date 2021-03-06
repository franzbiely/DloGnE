<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Response;
use App\Rental;
use App\RentalInclusion;
use App\RentalsInclusionTier;

class RentalInclusionTiersController extends Controller
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
               'rental_inclusion_id' => $data['rental_inclusion_id']
            ];
    }
    public function index() {
        $data = RentalsInclusionTier::orderBy('id')->get();
        return Response::json([
            'data' => $this->transformCollection($data)
        ], 200);
    }
    public function show($id) {
        $data = RentalsInclusionTier::find($id);
 
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
        
        $data = RentalsInclusionTier::create($request->all());
        return Response::json([
                'message' => $this->title . ' Created Succesfully',
                'data' => $this->transform($data)
        ]);
    }
    public function insert($rental_id, $rental_inclusion_id) {
        $rentalInclusionTier = new RentalsInclusionTier;
        $rentalInclusionTier->rental_id = $rental_id;
        $rentalInclusionTier->rental_inclusion_id = $rental_inclusion_id;

        $rentalInclusionTier->save();
        return Response::json([
            'message' => $this->title . ' Created Succesfully',
            'data' => $this->transform($rentalInclusionTier)
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
        
        $data = RentalsInclusionTier::find($id);
        $data->title = $request->title;
        $data->save(); 
 
        return Response::json([
                'message' => $this->title . ' '. $id .' Updated Succesfully'
        ]);
    }

    // ============== [ / Update ] ================================

    // ============== [ Delete ] ================================

    public function destroy($id) {
        RentalsInclusionTier::destroy($id);
        return Response::json([
            'message' => $this->title . ' '. $id .' Deleted Succesfully'
        ]);
    }

    public function deletebyRentalID($rid) {
        $affectedRows = RentalsInclusionTier::where('rental_id', '=', $rid)->delete();
        return Response::json([
            'message' => 'Rental Id ' . $rid . ' in RentalsInclusionTier multiple record deleted succesfully.'
        ]);
    }

    // ============== [ / Delete ] ================================

    
}
