<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Property;
use App\PropertyUse;
use App\PropertyClass;
use App\PropertyLeaseType;
use App\PropertyCity;
use App\Media;

use App\Http\Controllers\MediaController;
use Response;
use Input;
use DB;

use Excel;

class PropertiesController extends Controller {

    private $price_min;
    private $price_max;
    private $with;
    private $default_select;

    public function __construct() {
        // $this->middleware('jwt.auth');
        $this->price_min = -1;
        $this->price_max = -1;
        $this->with = array(
            'Property_City'       =>function($query) { $query->select('id','name'); },
            'Property_Suburb'     =>function($query) { $query->select('id','name'); },
            'Property_Lease_Type' =>function($query) { $query->select('id','name'); },
            'Property_Class'      =>function($query) { $query->select('id','name'); },
            'Property_Use'        =>function($query) { $query->select('id','name'); },
            'Current_Value',
            'Valuation'
        );
        $this->default_select = [
            'properties.id','code','description','property_use_id','property_class_id','property_lease_type_id','property_city_id','property_suburb_id','port','sec','lot','unit','land_value','land_component','improvement_component','area','owner'
        ];
    }
    public function index(Request $request) {        
        $search_term = $request->input('search');
        $limit       = $request->input('limit', 100);
        if ($search_term) {
            $properties = Property::orderBy('id', 'DESC')
                ->where('code', 'LIKE', "%$search_term%")
                ->where('is_archive', '=', "0")
                ->with( $this->with )
                ->select( $this->default_select )
                ->paginate($limit); 
            $properties->appends(array(            
                'limit' => $limit
            )); 
        }
        else {
            $properties = Property::orderBy('id', 'DESC')
                ->where('is_archive', '=', "0")
                ->with($this->with)
                ->select(
                    'properties.id','code','description','property_use_id','property_class_id','property_lease_type_id','property_city_id','property_suburb_id','port','sec','lot','unit','land_value','land_component','improvement_component','area','owner',
                    DB::raw('COUNT(valuations.id) AS valuations_count'), 
                    DB::raw('COUNT(sales.id) AS sales_count'))
                ->leftJoin('valuations', 'valuations.property_id', '=', 'properties.id')
                ->leftJoin('sales',      'sales.property_id',      '=', 'properties.id')
                ->groupBy('properties.id')
                ->paginate($limit); 
            $properties->appends(array(            
                'limit' => $limit
            ));   
        }
        return Response::json($this->transformCollection($properties), 200);
    }

    public function getByParam(Request $request, $params) {
        $limit = $request->input('limit', 100);
        $where = [];
        parse_str($params, $ret);
        
        if(isset($ret['price_min']) || isset($ret['price_max'])) {
            $this->price_min = $ret['price_min'];
            $this->price_max = $ret['price_max'];
            unset($ret['price_min']);
            unset($ret['price_max']);
        }
        
        foreach($ret as $key=>$val) {
            if(isset($val))
                $where[$key] = $val;
        };
        $properties = Property::orderBy('id', 'DESC')
            ->where($where)
            ->with( $this->with)
            ->select($this->default_select)
            ->paginate($limit); 
        $properties->appends(array(            
            'limit' => $limit
        )); 
               
        return Response::json($this->transformCollection($properties), 200);
    }

    public function store(Request $request) {
        $media_controller = new MediaController();
        try {
            if(! $request->property_use_id or
               ! $request->property_class_id or
               ! $request->property_lease_type_id or
               ! $request->property_city_id or
               ! $request->property_suburb_id or
               ! $request->land_value ){
                return Response::json([
                    'error' => [
                        'message' => 'Some mandatory fields are not filled up'
                    ]
                ], 422);
            }
            $property = Property::create($request->all());
        }
        catch(\Exception $e){ return 'Error on inserting property details ' . $e->getMessage(); }

        try {
            foreach($request->photo_ids as $photo_id) {
                $media_controller->update_source_id($photo_id, $property->id);
            }
            foreach($request->pdf_ids as $pdf_id) {
                $media_controller->update_source_id($pdf_id, $property->id);
            }
        }
        catch(\Exception $e){ return 'Error on updating image source ' . $e->getMessage(); }

        return Response::json([
                'message' => 'Property Created Succesfully',
                'data' => $this->transform($property)
        ]);
    }
    public function show($id)
    {
        $property = Property::with($this->with)
            ->where('is_archive', '=', "0")
            ->select($this->default_select)
            ->find($id);

        if(!$property){
            return Response::json([
                'error' => [
                    'message' => 'Property does not exist'
                ]
            ], 404);
        }

         // get previous Property id
        $previous = Property::where('id', '<', $property->id)->max('id');

        // get next Property id
        $next = Property::where('id', '>', $property->id)->min('id');
        // return Response::json([]);
        return Response::json([
            'previous_Property_id'=> $previous,
            'next_Property_id'=> $next,
            'data' => $property
        ], 200);
    }

    public function update(Request $request, $id) {    
        try {
            $property = Property::find($id);
            if(isset($request->code))               $property->code = $request->code;
            if(isset($request->description))        $property->description = $request->description;
            if(isset($request->property_use_id))    $property->property_use_id = $request->property_use_id;
            if(isset($request->property_class_id))  $property->property_class_id = $request->property_class_id;
            if(isset($request->property_lease_type_id)) $property->property_lease_type_id = $request->property_lease_type_id;
            if(isset($request->property_city_id))   $property->property_city_id = $request->property_city_id;
            if(isset($request->property_suburb_id)) $property->property_suburb_id = $request->property_suburb_id;
            if(isset($request->port))               $property->port = $request->port;
            if(isset($request->sec))                $property->sec = $request->sec;
            if(isset($request->lot))                $property->lot = $request->lot;
            if(isset($request->unit))               $property->unit = $request->unit;
            if(isset($request->land_value))         $property->land_value = $request->land_value;
            if(isset($request->land_component))     $property->land_component = $request->land_component;
            if(isset($request->improvement_component)) $property->improvement_component = $request->improvement_component;
            if(isset($request->area))               $property->area = $request->area;
            if(isset($request->is_archive))         $property->is_archive = $request->is_archive;
            if(isset($request->owner))              $property->owner = $request->owner;

            $property->save(); 
        }
        catch(\Exception $e) { return 'Error on updating property details  ' . $e->getMessage(); }

        if(isset($request->photo_ids)) {
            try {
                // remove not in array anymore
                $media_controller = new MediaController();
                $media_controller->remove_image_by_propertyID($property->id, $request->photo_ids);
                $media_controller->remove_pdf_by_propertyID($property->id, $request->pdf_ids);
                // update and insert new photo_ids
                foreach($request->photo_ids as $photo_id) {
                    $media_controller->update_source_id($photo_id, $property->id);
                }
                foreach($request->pdf_ids as $pdf_id) {
                    $media_controller->update_source_id($pdf_id, $property->id);
                }
            }
            catch(\Exception $e){ return 'Error on updating image source ' . $e->getMessage(); }
        }

        return Response::json([
                'message' => 'Property Updated Succesfully'
        ]);
    }

    public function destroy($id)
    {
        Property::destroy($id);
        return Response::json([
                'message' => '#'. $id .' Deleted Succesfully'
        ]);
    }

    private function transformCollection($properties){
        $propertiesArray = $properties->toArray();

        $data = array_map([$this, 'transform'], $propertiesArray['data']);
        $total = $propertiesArray['total'];

        if($this->price_min !=-1 || $this->price_max !=-1) {
            foreach($data as $key=>$val) {
                if($val['current_value'] < $this->price_min || $val['current_value'] > $this->price_max) {
                    unset($data[$key]);
                    $total--;
                    continue;
                }
            }
            $data = array_values($data);
        }
        

        return [
            'total' => $total,
            'per_page' => intval($propertiesArray['per_page']),
            'current_page' => $propertiesArray['current_page'],
            'last_page' => $propertiesArray['last_page'],
            'next_page_url' => $propertiesArray['next_page_url'],
            'prev_page_url' => $propertiesArray['prev_page_url'],
            'from' => $propertiesArray['from'],
            'to' =>$total,
            'data' => $data
        ];
    }

    private function transform($property){
        $ret = [
                'id' => $property['id'],
                'city' => $property['property__city']['name'],
                'suburb' => $property['property__suburb']['name'],
                'lease_type'=>$property['property__lease__type']['name'],
                'class'=>$property['property__class']['name'],
                'use'=>$property['property__use']['name'],
                'code' => $property['code'],
                'description'=> $property['description'],
                'port'=> $property['port'],
                'sec'=> $property['sec'],
                'lot'=> $property['lot'],
                'unit'=> $property['unit'],
                'land_value'=> $property['land_value'],
                'land_component'=> $property['land_component'],
                'improvement_component'=> $property['improvement_component'],
                'area'=> $property['area'],
                'owner'=> $property['owner'],
                'valuation'=> $property['valuation'],
                'current_value'=>floatval($property['current__value']['value'])
        ];
        if(isset($property['valuations_count']))
            $ret['valuations_count'] = $property['valuations_count'];
        if(isset($property['sales_count']))
            $ret['sales_count'] = $property['sales_count'];
        return $ret;
    }
    private function export_report($request, $_property, $type) {
        parse_str($_property, $property);
        $filename = "SVIS-Property-".$property['id'];
        $filetype = $type;
        Excel::create($filename, function($excel) use($property, $request){
            $excel->sheet('Excel sheet', function($sheet) use($property, $request) {
                $ROW = 3;
                

                $sheet ->mergeCells('A1:D1');
                $sheet->setCellValue('A1', 'Property Details of - #' . $property['id']);

                if(isset($property['code'])) {
                    $sheet->setCellValue('A'.$ROW, 'Property Code');
                    $sheet->setCellValue('B'.$ROW, $property['code']);    
                }

                if(isset($property['class'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Class');
                    $sheet->setCellValue('B'.$ROW, $property['class']);
                }
                    
                if(isset($property['city'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'City');
                    $sheet->setCellValue('B'.$ROW, $property['city']);
                }
                    
                if(isset($property['use'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Use');
                    $sheet->setCellValue('B'.$ROW, $property['use']);
                }
                    
                if(isset($property['lease_type'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Lease Type');
                    $sheet->setCellValue('B'.$ROW, $property['lease_type']);
                }
                    
                if(isset($property['suburb'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Suburb');
                    $sheet->setCellValue('B'.$ROW, $property['suburb']);
                }
                    
                if(isset($property['sec'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Sec');
                    $sheet->setCellValue('B'.$ROW, $property['sec']);
                }
                    
                if(isset($property['lot'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Lot');
                    $sheet->setCellValue('B'.$ROW, $property['lot']);
                }
                    
                if(isset($property['unit'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Unit #');
                    $sheet->setCellValue('B'.$ROW, $property['unit']);
                }
                    
                if(isset($property['land_value'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Land Value / sq.m (K)');
                    $sheet->setCellValue('B'.$ROW, $property['land_value']);
                }
                    
                if(isset($property['land_component'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Land Component (K)');
                    $sheet->setCellValue('B'.$ROW, $property['land_component']);
                }
                    
                if(isset($property['improvement_component'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Improvement Component (K)');
                    $sheet->setCellValue('B'.$ROW, $property['improvement_component']);
                }
                    
                if(isset($property['area'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Area (sq.m)');
                    $sheet->setCellValue('B'.$ROW, $property['area']);
                }
                    
                if(isset($property['owner'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Seller');
                    $sheet->setCellValue('B'.$ROW, $property['owner']);
                }
                    

                $sheet ->mergeCells('A' . ($ROW+=2) . ':D'.$ROW);
                $sheet->setCellValue('A'.$ROW, 'VALUATION HISTORY OF PROPERTY #');
                $sheet->setCellValue('A'.$ROW+=1, 'Date');
                $sheet->setCellValue('B'.$ROW, 'Value');
                $sheet->setCellValue('C'.$ROW, 'Remarks');

                if(count($request->valuations) > 0 ) {
                    foreach($request->valuations as $key=>$valuation) {
                        $sheet->setCellValue('A'.$ROW+=1, $valuation['date']);
                        $sheet->setCellValue('B'.$ROW, $valuation['value']);
                        $sheet->setCellValue('C'.$ROW, $valuation['remarks']);                    
                    }
                }
                else {
                    $sheet ->mergeCells('A' . ($ROW+=1) .':D'.$ROW);
                    $sheet->setCellValue('A'.$ROW, 'No data');
                }

                $sheet ->mergeCells('A' . ($ROW+=2) .':D'.$ROW);
                $sheet->setCellValue('A'.$ROW, 'SALES HISTORY OF PROPERTY #');
                $sheet->setCellValue('A'.$ROW+=1, 'Date');
                $sheet->setCellValue('B'.$ROW, 'Value');
                $sheet->setCellValue('C'.$ROW, 'Buyer');
                $sheet->setCellValue('D'.$ROW, 'Remarks');

                if(count($request->sale) > 0 ) {
                    foreach($request->sales as $sale) {
                        $sheet->setCellValue('A'.$ROW+=1, $sale['date']);
                        $sheet->setCellValue('B'.$ROW, $sale['value']);
                        $sheet->setCellValue('C'.$ROW, $sale['buyer']);
                        $sheet->setCellValue('D'.$ROW, $sale['remarks']);                    
                    }
                }
                else {
                    $sheet ->mergeCells('A' . ($ROW+=1) .':D'.$ROW);
                    $sheet->setCellValue('A'.$ROW, 'No data');
                }
            });

        })->download($filetype);
    }
    public function export_report_csv(Request $request, $_property) {
        $this->export_report($request, $_property, 'csv');
    }
    public function export_report_excel(Request $request, $_property) {
        $this->export_report($request, $_property, 'xls');
    }
    private function export_report_list($request, $type) {
        $filename = "SVIS-Properties";
        $filetype = $type;
        
        Excel::create($filename, function($excel) use($request){
            $excel->sheet('Excel sheet', function($sheet) use($request) {
                $ROW = 4;

                $sheet ->mergeCells('A1:E1');
                $sheet->setCellValue('A1', 'MULTIPLE PROPERTY SEARCH RESULTS');

                $sheet->setCellValue('A3', 'Filters made for this result :');

                
                foreach($request->searchquery as $key=>$val) {
                    switch($key) {
                        case 'property_class_id' : 
                            $key = 'Class'; $val = $request->properties[0]['class']; break;
                        case 'property_city_id' : 
                            $key = 'City'; $val = $request->properties[0]['city']; break;
                        case 'property_suburb_id' : 
                            $key = 'Suburb'; $val = $request->properties[0]['suburb']; break;
                        case 'property_lease_type_id' :
                            $key = 'Lease Type'; $val = $request->properties[0]['lease_type']; break;
                    }
                    $sheet->setCellValue('A'.$ROW+=1, $key);
                    $sheet->setCellValue('B'.$ROW, $val);    
                }

                $sheet->setCellValue('A'.$ROW+=2, 'ID');
                $sheet->setCellValue('B'.$ROW, 'City');
                $sheet->setCellValue('C'.$ROW, 'Suburb');
                $sheet->setCellValue('D'.$ROW, 'Class');
                $sheet->setCellValue('E'.$ROW, 'Lease Type');
                $sheet->setCellValue('F'.$ROW, 'Port');
                $sheet->setCellValue('G'.$ROW, 'Sec');
                $sheet->setCellValue('H'.$ROW, 'Lot');
                $sheet->setCellValue('I'.$ROW, 'Unit #');
                $sheet->setCellValue('J'.$ROW, 'Current Value');
                $sheet->setCellValue('K'.$ROW, 'Seller');

                foreach($request->properties as $key=>$property) {
                    $sheet->setCellValue('A'.$ROW+=1, $property['id']);
                    $sheet->setCellValue('B'.$ROW, $property['city']);
                    $sheet->setCellValue('C'.$ROW, $property['suburb']);                    
                    $sheet->setCellValue('D'.$ROW, $property['class']);                    
                    $sheet->setCellValue('E'.$ROW, $property['lease_type']);                    
                    $sheet->setCellValue('F'.$ROW, $property['port']);                    
                    $sheet->setCellValue('G'.$ROW, $property['sec']);                    
                    $sheet->setCellValue('H'.$ROW, $property['lot']);                    
                    $sheet->setCellValue('I'.$ROW, $property['unit']);                    
                    $sheet->setCellValue('J'.$ROW, $property['current_value']);                    
                    $sheet->setCellValue('K'.$ROW, $property['owner']);                    
                }

            });

        })->download($filetype);
    }
    public function export_report_csv_list(Request $request) {
        $this->export_report_list($request, 'csv');
    }
    public function export_report_excel_list(Request $request) {
        $this->export_report_list($request, 'xls');
    }
}
