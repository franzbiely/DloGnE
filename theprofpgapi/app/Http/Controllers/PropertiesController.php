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
use PDF;

class PropertiesController extends Controller {

    private $price_min;
    private $price_max;
    private $include_valuation_zero;
    private $include_sales_zero;
    private $with;
    private $default_select;

    public function __construct() {
        $this->middleware('jwt.auth');
        $this->price_min = -1;
        $this->price_max = -1;
        $this->include_valuation_zero = false;
        $this->include_sales_zero = false;
        $this->with = array(
            'Property_City'       =>function($query) { $query->select('id','name'); },
            'Property_Suburb'     =>function($query) { $query->select('id','name'); },
            'Property_Lease_Type' =>function($query) { $query->select('id','name'); },
            'Property_Class'      =>function($query) { $query->select('id','name'); },
            'Property_Use'        =>function($query) { $query->select('id','name'); },
            'Current_Value',
            'Valuation',
            'Sale',
            'Area'
        );
        $this->default_select = [
            'properties.id',
            'code',
            'description',
            'property_use_id',
            'property_class_id',
            'property_lease_type_id',
            'property_city_id',
            'property_suburb_id',
            'port',
            'sec',
            'lot',
            'unit',
            'owner'
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
                    'properties.id','code','properties.description','property_use_id','property_class_id','property_lease_type_id','property_city_id','property_suburb_id','port','sec','lot','unit','owner')
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
        if(isset($ret['id'])) {
            $ret['properties.id'] = $ret['id'];
            unset($ret['id']);
        }
        if(isset($ret['include_sales_zero'])) {
            if($ret['include_sales_zero'] == 'true') {
                $this->include_sales_zero = $ret['include_sales_zero'];
            }
            unset($ret['include_sales_zero']);
        }
        if(isset($ret['include_valuation_zero'])) {
            if($ret['include_valuation_zero'] == 'true') {
                $this->include_valuation_zero = $ret['include_valuation_zero'];
            }
            unset($ret['include_valuation_zero']);
        }
        foreach($ret as $key=>$val) {
            if(isset($val))
                $where[$key] = $val;
        };
        
        $properties = Property::orderBy('id', 'DESC')
            ->where($where)
            ->with( $this->with)
            ->select('properties.id','code','properties.description','property_use_id','property_class_id','property_lease_type_id','property_city_id','property_suburb_id','port','sec','lot','unit','owner')
            ->groupBy('properties.id')
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
               ! $request->property_suburb_id){
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

        if($this->price_min != -1 && $this->price_max != -1) {
            foreach($data as $key=>$val) {
                if($val['valuations_count'] == 0 && !$this->include_valuation_zero) {
                    unset($data[$key]);
                    $total--;
                    continue;
                }
                if($val['sales_count'] == 0 && !$this->include_sales_zero) {
                    unset($data[$key]);
                    $total--;
                    continue;
                }
                if($this->price_min > 0) {
                    if($val['current_value'] < $this->price_min || $val['current_value'] > $this->price_max) {
                        unset($data[$key]);
                        $total--;
                        continue;
                    }
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
                'owner'=> $property['owner'],
                'valuation'=> $property['valuation'],
                'sale'=> $property['sale'],
                'valuations_count' => count($property['valuation']),
                'sales_count' => count($property['sale']),
                'current_value'=>floatval($property['current__value']['value']),
                'area'=>floatval($property['area']['area'])
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
                    
                if(isset($property['owner'])) {
                    $sheet->setCellValue('A'.$ROW+=1, 'Seller');
                    $sheet->setCellValue('B'.$ROW, $property['owner']);
                }
                    

                $sheet ->mergeCells('A' . ($ROW+=2) . ':D'.$ROW);
                $sheet->setCellValue('A'.$ROW, 'VALUATION HISTORY OF PROPERTY #' . $property['id']);
                $sheet->setCellValue('A'.$ROW+=1, 'Date Valued');
                $sheet->setCellValue('B'.$ROW, 'Property Value (K)');
                $sheet->setCellValue('C'.$ROW, 'Land Component (K)');
                $sheet->setCellValue('D'.$ROW, 'Insurance Value (K)');
                $sheet->setCellValue('E'.$ROW, 'Forced Sale Value (K)');
                $sheet->setCellValue('F'.$ROW, 'Improvement Component (K)');
                $sheet->setCellValue('G'.$ROW, 'Area (sqm)');
                $sheet->setCellValue('H'.$ROW, 'Land Value Rate (per sqm)');
                $sheet->setCellValue('I'.$ROW, 'Description');

                if(count($request->valuations) > 0 ) {
                    foreach($request->valuations as $key=>$valuation) {
                        $sheet->setCellValue('A'.$ROW+=1, $valuation['date']);
                        $sheet->setCellValue('B'.$ROW, number_format($valuation['property_value']));
                        $sheet->setCellValue('C'.$ROW, number_format($valuation['land_component']));
                        $sheet->setCellValue('D'.$ROW, number_format($valuation['insurance_value']));
                        $sheet->setCellValue('E'.$ROW, number_format($valuation['forced_sale_value']));
                        $sheet->setCellValue('F'.$ROW, number_format($valuation['improvement_component']));
                        $sheet->setCellValue('G'.$ROW, number_format($valuation['area']));
                        $sheet->setCellValue('H'.$ROW, number_format($valuation['land_value_rate']));
                        $sheet->setCellValue('I'.$ROW, $valuation['description']);
                    }
                }
                else {
                    $sheet ->mergeCells('A' . ($ROW+=1) .':D'.$ROW);
                    $sheet->setCellValue('A'.$ROW, 'No data');
                }

                $sheet ->mergeCells('A' . ($ROW+=2) .':D'.$ROW);
                $sheet->setCellValue('A'.$ROW, 'SALES HISTORY OF PROPERTY #' . $property['id']);
                $sheet->setCellValue('A'.$ROW+=1, 'Date');
                $sheet->setCellValue('B'.$ROW, 'Price (K)');
                $sheet->setCellValue('C'.$ROW, 'Purchaser');
                $sheet->setCellValue('D'.$ROW, 'Vendor');
                $sheet->setCellValue('E'.$ROW, 'Est Land Value (K)');
                $sheet->setCellValue('F'.$ROW, 'Est Improvement Value (K)');
                $sheet->setCellValue('G'.$ROW, 'Area (sqm)');
                $sheet->setCellValue('H'.$ROW, 'Est Land Rate (per sqm)');
                $sheet->setCellValue('I'.$ROW, 'Description');

                if(count($request->sales) > 0 ) {
                    foreach($request->sales as $sale) {
                        $sheet->setCellValue('A'.$ROW+=1, $sale['date']);
                        $sheet->setCellValue('B'.$ROW, number_format($sale['price']));
                        $sheet->setCellValue('C'.$ROW, $sale['purchaser']);
                        $sheet->setCellValue('D'.$ROW, $sale['vendor']);
                        $sheet->setCellValue('E'.$ROW, number_format($sale['est_land_value']));
                        $sheet->setCellValue('F'.$ROW, number_format($sale['est_improvement_value']));
                        $sheet->setCellValue('G'.$ROW, number_format($sale['area']));
                        $sheet->setCellValue('H'.$ROW, number_format($sale['est_land_rate']));
                        $sheet->setCellValue('I'.$ROW, $sale['description']);                    
                    }
                }
                else {
                    $sheet->mergeCells('A' . ($ROW+=1) .':D'.$ROW);
                    $sheet->setCellValue('A'.$ROW, 'No data');
                }
            });
        })->download($filetype);
    }
    private function pdf_content($request, $property, $params) {
        $filename = $params->filename;
        ob_start();
        header("Content-Type: text/html; charset=utf-8");
        ?>
        <style>
        * {
            font-size: 12px;
            font-family: sans-serif;
        }
        </style>
<center><h2>(SVIS) SALES AND VALUATION INFORMATION SYSTEM <br /><sub><i>The Professionals</i></sub> </h2></center>
<br /><br />
<h3>Property Details of - #<?php echo $property['id'] ?></h3>
<?php if(isset($property['code'])) { ?>Property Code   <strong><?php echo $property['code'] ?></strong><br /><?php } ?>
<?php if(isset($property['class'])) { ?>Class           <strong><?php echo $property['class'] ?></strong><br /><?php } ?>
<?php if(isset($property['city'])) { ?>City            <strong><?php echo $property['city'] ?></strong><br /><?php } ?>
<?php if(isset($property['use'])) { ?>Use             <strong><?php echo $property['use'] ?></strong><br /><?php } ?>
<?php if(isset($property['lease_type'])) { ?>Lease Type      <strong><?php echo $property['lease_type'] ?></strong><br /><?php } ?>
<?php if(isset($property['suburb'])) { ?>Suburb          <strong><?php echo $property['suburb'] ?></strong><br /><?php } ?>
<?php if(isset($property['sec'])) { ?>Sec             <strong><?php echo $property['sec'] ?></strong><br /><?php } ?>
<?php if(isset($property['lot'])) { ?>Lot             <strong><?php echo $property['lot'] ?></strong><br /><?php } ?>
<?php if(isset($property['unit'])) { ?>Unit #          <strong><?php echo $property['unit'] ?></strong><br /><?php } ?>
<?php if(isset($property['owner'])) { ?>Seller <strong><?php echo $property['owner'] ?></strong><br /><?php } ?>
<hr />


<?php if(!isset($params->hide_valuation) || !$params->hide_valuation) : ?>

    <h3>VALUATION HISTORY OF PROPERTY #<?php echo $property['id'] ?></h3>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <th>Date</th>
            <th>Total Value (K)</th>
            <th>Property Value (K)</th>
            <th>Land Component (K)</th>
            <th>Insurance Value (K)</th>
            <th>Forced Sale Value (K)</th>
            <th>Improvement Component (K)</th>
            <th>Area (sqm)</th>
            <th>Land Value Rate (per sqm)</th>
            <th>Description</th>
        </tr>
        <?php
        if(count($request->valuations) > 0 ) {
            foreach($request->valuations as $key=>$valuation) { ?>
                <tr>
                    <td><?php echo $valuation['date'] ?></td>
                    <td><?php echo ($valuation['improvement_component'] !== '' && $valuation['property_value'] !== '' ) ?number_format($valuation['improvement_component'] + $valuation['property_value']) : '' ?></td>
                    <td><?php echo ($valuation['property_value'] !== '') ?number_format($valuation['property_value']) : '' ?></td>
                    <td><?php echo ($valuation['land_component'] !== '') ?number_format($valuation['land_component']) : '' ?></td>
                    <td><?php echo ($valuation['insurance_value'] !== '') ?number_format($valuation['insurance_value']) : '' ?></td>
                    <td><?php echo ($valuation['forced_sale_value'] !== '') ? number_format($valuation['forced_sale_value']) : '' ?></td>
                    <td><?php echo ($valuation['improvement_component'] !== '') ?number_format($valuation['improvement_component']) : '' ?></td>
                    <td><?php echo ($valuation['area'] !== '') ?number_format($valuation['area']) : '' ?></td>
                    <td><?php echo ($valuation['land_value_rate'] !== '') ?number_format($valuation['land_value_rate']) : '' ?></td>
                    <td><?php echo $valuation['description'] ?></td>
                </tr>
            <?php }
        }
        else {
            ?><tr><td colspan="10">No data</td></tr><?php
        } ?>
    </table>
    <br /><br />

<?php endif; ?>

<?php if(!isset($params->hide_sales) || !$params->hide_sales) : ?>
    <h3>SALES HISTORY OF PROPERTY #<?php echo $property['id'] ?></h3>
    <table border="1" cellpadding="10" cellspacing="0">
        <tr>
            <?php if(!isset($params->hide_sales_column) || !in_array('date', $params->hide_sales_column)) { ?>                  <th>Date</th> <?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('source', $params->hide_sales_column)) { ?>                <th>Source</th> <?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('price', $params->hide_sales_column)) { ?>                 <th>Price (K)</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('purchaser', $params->hide_sales_column)) { ?>             <th>Purchaser</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('vendor', $params->hide_sales_column)) { ?>                <th>Vendor</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('est_land_value', $params->hide_sales_column)) { ?>        <th>Est Land Value (K)</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('est_improvement_value', $params->hide_sales_column)) { ?> <th>Est Improvement Value (K)</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('area', $params->hide_sales_column)) { ?>                  <th>Area (sqm)</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('est_land_rate', $params->hide_sales_column)) { ?>         <th>Est Land Rate (per sqm)</th><?php } ?>
            <?php if(!isset($params->hide_sales_column) || !in_array('description', $params->hide_sales_column)) { ?>           <th>Description</th><?php } ?>

        </tr>
        <?php
        if(count($request->sales) > 0 ) {
            foreach($request->sales as $key=>$sale) { ?>
                <tr>
                    <?php if(!isset($params->hide_sales_column) || !in_array('date', $params->hide_sales_column)) { ?> <td><?php echo $sale['date'] ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('source', $params->hide_sales_column)) { ?> <td><?php echo $sale['source'] ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('price', $params->hide_sales_column)) { ?> <td><?php echo ($sale['price'] !== '') ? number_format($sale['price']) : '' ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('purchaser', $params->hide_sales_column)) { ?>  <td><?php echo $sale['purchaser'] ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('vendor', $params->hide_sales_column)) { ?> <td><?php echo $sale['vendor'] ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('est_land_value', $params->hide_sales_column)) { ?> <td><?php echo ($sale['est_land_value'] !== '') ? number_format($sale['est_land_value']) : '' ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('est_improvement_value', $params->hide_sales_column)) { ?> <td><?php echo ($sale['est_improvement_value'] !== '') ? number_format($sale['est_improvement_value']) : '' ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('area', $params->hide_sales_column)) { ?> <td><?php echo ($sale['area'] !== '') ? number_format($sale['area']) : '' ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('est_land_rate', $params->hide_sales_column)) { ?>  <td><?php echo ($sale['est_land_rate'] !== '') ? number_format($sale['est_land_rate']) : '' ?></td> <?php } ?>
                    <?php if(!isset($params->hide_sales_column) || !in_array('description', $params->hide_sales_column)) { ?>   <td><?php echo $sale['description'] ?></td> <?php } ?>
                </tr>
            <?php }
        }
        else {
            ?><tr><td colspan="10">No data</td></tr><?php
        } ?>
    </table>
    <br /><br /><br />

<?php endif; ?>

<p align="center">2017 &copy; The Professionals | SVIS v1.0</p>
        <?php
        $html = ob_get_contents();
        ob_end_clean();
        $pdf = PDF::loadHTML($html)->setPaper('a4', $params->paper);
        return $pdf->download($filename.'.pdf');
    }
    public function export_report_csv(Request $request, $_property) {
        $this->export_report($request, $_property, 'csv');
    }
    public function export_report_excel(Request $request, $_property) {
        $this->export_report($request, $_property, 'xls');
    }
    public function export_report_pdf(Request $request, $_property) {
        parse_str($_property, $property);
        $params = (object) ['paper' => 'landscape', 'filename' => "SVIS-Property-".$property['id']];
        return $this->pdf_content($request, $property, $params);
    }
    public function export_report_snapshot_pdf(Request $request, $_property) {
        parse_str($_property, $property);
        $params = (object) ['paper' => 'portrait', 
                            'hide_valuation' => true, 
                            'hide_sales_column' => ['purchaser','vendor','description'],
                            'filename' => "SVIS-Property-Snapshot-".$property['id'] ];
        return $this->pdf_content($request, $property, $params);
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
                    if($val != '') {
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
                    $sheet->setCellValue('J'.$ROW, number_format($property['current_value']));                    
                    $sheet->setCellValue('K'.$ROW, $property['owner']);                    
                }

            });

        })->download($filetype);
    }
    public function export_report_csv_list(Request $request) {
        // echo "HELLO WORLD";
        // print_r($request->properties);
        // print_r($request->searchquery); exit();
        $this->export_report_list($request, 'csv');
    }
    public function export_report_excel_list(Request $request) {
        $this->export_report_list($request, 'xls');
    }
}
