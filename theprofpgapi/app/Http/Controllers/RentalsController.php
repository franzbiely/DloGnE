<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Rental;
use App\Property;
use App\RentalArea;
use App\RentalPeriod;
use App\RentalReviewMethod;
use App\RentalInclusion;

use App\Http\Controllers\RentalInclusionTiersController;
use App\Http\Controllers\RentalRatingTiersController;

use Response;
use Input;
use DB;

class RentalsController extends Controller
{
    // public function __construct(){
    //     $this->middleware('jwt.auth');
    // }

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
                        $query->select('id','name');
                    },
                    'Rental_Area'=>function($query){
                        $query->select('id','title');
                    },
                    'Rental_Period'=>function($query){
                        $query->select('id','title');
                    },
                    'Rental_Review_Method'=>function($query){
                        $query->select('id','title');
                    }
                )
            )->select('id', 
                'property_id',
                'analysed_rent',
                'analysed_date',
                'remarks',
                'inclusion_other',
                'rental_area_id',
                'rental_period_id',
                'rental_review_method_id',
                'rental_review_method',
                'name_of_tenant',
                'date_lease_commenced',
                'total_lease_period',
                'age_of_building'
            )->paginate($limit); 

            $rental->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($rental), 200);
    }

    public function getByProperty(Request $request, $property_id) {
        $search_term = $request->input('search');
        $limit = $request->input('limit', 100);
        $sales = Rental::where('property_id',$property_id)->orderBy('id', 'DESC')->with(
            array(
                'Property'=>function($query){
                    $query->select('id','name');
                },
                'Rental_Area'=>function($query){
                    $query->select('id','title');
                },
                'Rental_Period'=>function($query){
                    $query->select('id','title');
                },
                'Rental_Review_Method'=>function($query){
                    $query->select('id','title');
                }
            )
        )->select('id', 
            'analysed_rent',
            'analysed_date',
            'remarks',
            'property_id',
            'rental_area_id',
            'rental_period_id',
            'rental_review_method_id',
            'rental_review_method',
            'name_of_tenant',
            'date_lease_commenced',
            'total_lease_period',
            'age_of_building',
            'inclusion_other'
        )->paginate($limit); 
        $sales->appends(array(            
            'limit' => $limit
        ));
        return Response::json($this->transformCollection($sales), 200);
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
        $inclusion_tiers_controller = new RentalInclusionTiersController();
        $rating_tiers_controller = new RentalRatingTiersController();
        try {
            $rental = Rental::create($request->all());
        }
        catch(\Exception $e){
            return 'Error on inserting Rent details ' . $e->getMessage();
        }
        if(isset($request->inclusions_id_json)) {
            try {
                foreach($request->inclusions_id_json as $rental_inclusion) {
                    if(isset($rental_inclusion['isChecked'])) {
                        $inclusion_tiers_controller->insert($rental->id, $rental_inclusion['id']);    
                    }
                }
            }
            catch(\Exception $e){
                return 'Error on inserting inclusions ' . $e->getMessage();
            }
        }
        if(isset($request->maintenance_rates)) {
            try {
                foreach($request->maintenance_rates as $key=>$val) {
                    $rating_tiers_controller->insert($rental->id, $key, $val);
                }
            }
            catch(\Exception $e){
                return 'Error on maintenance rates ' . $e->getMessage();
            }
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
                array(
                    'Property'=>function($query){
                        $query->select('id','name');
                    },
                    'Inclusions'=>function($query){
                        $query->select('rental_inclusions.id','title');
                    },
                    'Maintenance_Ratings'=>function($query){
                        $query->select('rental_maintenances.id','title', 'rental_ratings_tier.rate');
                    }
                )
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
        $inclusion_tiers_controller = new RentalInclusionTiersController();
        $rating_tiers_controller = new RentalRatingTiersController();
        
        try {
            $rental = Rental::find($id);
            if(isset($request->analysed_rent)) $rental->analysed_rent = $request->analysed_rent;
            if(isset($request->analysed_date)) $rental->analysed_date = $request->analysed_date;
            if(isset($request->remarks)) $rental->remarks = $request->remarks;

            if(isset($request->inclusion_other)) $rental->inclusion_other = $request->inclusion_other;
            if(isset($request->rental_area_id)) $rental->rental_area_id = $request->rental_area_id;
            if(isset($request->rental_period_id)) $rental->rental_period_id = $request->rental_period_id;
            if(isset($request->rental_review_method)) {
                $rental->rental_review_method_id = $request->rental_review_method_id;
                if($request->rental_review_method_id == 2) {
                    $rental->rental_review_method = $request->rental_review_method;
                }
                else {
                    $rental->rental_review_method = null;
                }
            }
            if(isset($request->total_lease_period)) $rental->total_lease_period = $request->total_lease_period;
            if(isset($request->date_lease_commenced)) $rental->date_lease_commenced = $request->date_lease_commenced;
            if(isset($request->name_of_tenant)) $rental->name_of_tenant = $request->name_of_tenant;
            if(isset($request->total_lease_period)) $rental->total_lease_period = $request->total_lease_period;

            if(isset($request->age_of_building)) $rental->age_of_building = $request->age_of_building;

            $rental->save(); 
        }
        catch(\Exception $e){
            return 'Error on updating Rent details  ' . $e->getMessage();
        }
        if(isset($request->inclusions_id_json)) {
            try {
                $inclusion_tiers_controller->deletebyRentalID($rental->id);
                foreach($request->inclusions_id_json as $rental_inclusion) {
                    if(isset($rental_inclusion['isChecked']) && $rental_inclusion['isChecked']!='') {
                        $inclusion_tiers_controller->insert($rental->id, $rental_inclusion['id']);    
                        if($rental_inclusion['id'] == 13) { // 13 = Other
                            if(isset($request->inclusion_other)) {
                                $rental->inclusion_other = $request->inclusion_other;
                            }
                        }
                    }
                }
            }
            catch(\Exception $e){
                return 'Error on inserting inclusions ' . $e->getMessage();
            }
        }
        if(isset($request->maintenance_rates)) {
            try {
                $rating_tiers_controller->deletebyRentalID($rental->id);
                foreach($request->maintenance_rates as $key=>$val) {
                    if(!empty($val)) {
                        $rating_tiers_controller->insert($rental->id, $key, $val);    
                    }
                }
            }
            catch(\Exception $e){
                return 'Error on inserting maintenance rates ' . $e->getMessage();
            }
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
        $inclusion_tiers_controller = new RentalInclusionTiersController();
        $rating_tiers_controller = new RentalRatingTiersController();
        Rental::destroy($id);
        $inclusion_tiers_controller->deletebyRentalID($id);
        $rating_tiers_controller->deletebyRentalID($id);
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
        $ret = array(
            'id' => $rental['id'],
            'property_id' => $rental['property_id'],
            'analysed_rent' => $rental['analysed_rent'],
            'analysed_date' => $rental['analysed_date'],
            'remarks' => $rental['remarks'],
            'rental_area_id' => $rental['rental_area_id'],
            'rental_area' => $rental['rental__area']['title'],
            'rental_period_id' => $rental['rental_period_id'],
            'rental_period' => $rental['rental__period']['title'],
            'rental_review_method_id' => $rental['rental_review_method_id'],

            'name_of_tenant' => $rental['name_of_tenant'],
            'date_lease_commenced' => $rental['date_lease_commenced'],
            'total_lease_period' => $rental['total_lease_period'],
            'age_of_building' => $rental['age_of_building'],

            'inclusion_other'=> $rental['inclusion_other']
        );
        if($rental['rental_review_method_id'] == '2') {
            $ret['rental_review_method'] = $rental['rental_review_method'];
        }
        else {
            $ret['rental_review_method'] = $rental['rental__review__method']['title'];
        }

        return $ret;
    }
}
