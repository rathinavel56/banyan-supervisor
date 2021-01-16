<?php

namespace App\Http\Controllers;

use DB;
use App\Caregivers;
use App\Clients;
use App\ClientStatus;
use App\Parameters;
use App\Medicines;
use App\Diet;
use App\Icp;
use App\MedicalScreening;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Route;

class HomeController extends Controller
{
  /**
   * Create a new controller instance.
   *
   * @return void
   */
  public function __construct()
  {

  }

  /**
   * Show the application dashboard.
   *
   * @return \Illuminate\Contracts\Support\Renderable
   */
  public function index()
  {
    return view('home');
  }

  public function login(Request $request)
  {
    $user = Caregivers::where('username', $request->username)
    ->where('password', $request->password)->first();

    if($user){
      return Response()->json(['status' => true, 'message' => 'User logged in successfully', 'data' => $user]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    }
  }

  public function generatePin(Request $request)
  {
    $code = $request->code;
    $pin = $request->pin;
    $user =  Caregivers::where('cgiver_code', $code)->first();
    $parameters = Parameters::all();
    if($user){
      $user->pin = $pin;
      $user->save();
      $total = $user->clients()->get()->count() + $user->clients2()->get()->count() + $user->clients3()->get()->count();
      $clients = [];
      foreach ($user->clients()->get() as $value) {
        array_push($clients, $value);
      }
      foreach ($user->clients2()->get() as $val) {
        array_push($clients, $val);
      }
      foreach ($user->clients3()->get() as $v) {
        array_push($clients, $v);
      }
      $data = ['count'=> $total,'clients'=> $clients];
      return Response()->json(['status' => true, 'message' => 'Pin created successfully', 'data' => $data, 'parameters' => $parameters]);
    } else {
      return Response()->json(['status' => false, 'message' => 'Invalid user']);
    }
  }

  public function updatePin(Request $request)
  {
    $code = $request->code;
    $pin = $request->pin;
    $newpin = $request->newpin;
    $user =  Caregivers::where('cgiver_code', $code)->where('pin', $pin)->first();
    if($user){
      $user->pin = $newpin;
      $user->save();
      return Response()->json(['status' => true, 'message' => 'Pin updated successfully']);
    } else {
      return Response()->json(['status' => false, 'message' => 'Invalid pin']);
    }
  }

  public function loginPin(Request $request)
  {
    $code = $request->code;
    $pin = $request->pin;
    $parameters = Parameters::all();
    $user =  Caregivers::where('cgiver_code', $code)->where('pin',$pin)->first();
    if($user){
      $total = $user->clients()->get()->count() + $user->clients2()->get()->count() + $user->clients3()->get()->count();
      $clients = [];
      foreach ($user->clients()->get() as $value) {
        array_push($clients, $value);
      }
      foreach ($user->clients2()->get() as $val) {
        array_push($clients, $val);
      }
      foreach ($user->clients3()->get() as $v) {
        array_push($clients, $v);
      }
      $data = ['count'=> $total,'clients'=> $clients,'userdata' => $user];
      return Response()->json(['status' => true, 'message' => 'User logged in successfully', 'data' => $data, 'parameters' => $parameters]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Pin not valid']);
    }
  }

  public function uploadSelfie(Request $request)
  {
    $code = $request->code;
    $user =  Caregivers::where('cgiver_code', $code)->first();
    if($user){
      if($request->hasFile('image')) {
        $allowedfileExtension=['jpg','png'];
        $originName = $request->file('image')->getClientOriginalName();
        $fileName = pathinfo($originName, PATHINFO_FILENAME);
        $extension = $request->file('image')->getClientOriginalExtension();
        $fileName = $fileName.'_'.time().'.'.$extension;
        $check=in_array($extension,$allowedfileExtension);

        if($check){
          $request->file('image')->move(public_path('uploads/images'), $fileName);
        } else {
          return Response()->json(['status' => false, 'message' => 'Upload only image files']);
        }
        $url = asset('/public/uploads/images/'.$fileName);
      } else {
        return Response()->json(['status' => false, 'message' => 'Image should be attached']);
      }
      $user->cgiver_profile_url = $url;
      //$user->cgiver_coordinates = $request->coordinates;
      $user->save();
      return Response()->json(['status' => true, 'message' => 'Image added successfully', 'data' => $user]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    }
  }

  public function clientStatus(Request $request){
    $centerCode = $request->center_code;
    $code = $request->code;
    $date = date("Y-m-d H:i:s", strtotime($request->date));
    $clientFileNo = $request->client_file_number;
    $code2 = $request->code_2;
    $self = json_decode($request->selfcare);
    if($request->hasFile('selfie')) {
      $allowedfileExtension=['jpg','png'];
      $originName = $request->file('selfie')->getClientOriginalName();
      $fileName = pathinfo($originName, PATHINFO_FILENAME);
      $extension = $request->file('selfie')->getClientOriginalExtension();
      $fileName = $fileName.'_'.time().'.'.$extension;
      $check=in_array($extension,$allowedfileExtension);

      if($check){
        $request->file('selfie')->move(public_path('uploads/images'), $fileName);
      } else {
        return Response()->json(['status' => false, 'message' => 'Upload only image files']);
      }
      $url = asset('/public/uploads/images/'.$fileName);
      DB::table('client_status')->insert(
            [
              'center_code'   => $centerCode,
              'client_cgiver1'  => $code,
              'date'             => $date,
              'client_file_number' => $clientFileNo,
              'client_cgiver2'          => $code2,
              '1_1'              => $self->bathing,
              '1_2'            => $self->grooming,
              '1_3'            => $self->toilet,
              '1_4'            => $self->meal,
              '1_5'            => $self->menstrual,
              '1_6'            => $self->bed,
              'cgiver_selfie_url' => $url,
              'cgiver_coordinates' => json_encode(["lat" => $request->lat, "long" => $request->long])
            ]
          );
    } else {
      return Response()->json(['status' => false, 'message' => 'Image should be attached']);
    }
    return Response()->json(['status' => true, 'message' => 'Status added successfully']);
  }

  public function allClients(Request $request){
    $code = $request->code;
    $user =  Caregivers::where('cgiver_code', $code)->first();
    if($user){
      $total = $user->clients()->get()->count() + $user->clients2()->get()->count() + $user->clients3()->get()->count();
      $clients = [];
      $date = date("Y-m-d");
      foreach ($user->clients()->get() as $value) {
        $te = ClientStatus::whereDate('date', $date)->where('client_file_number', $value->client_file_number)->count();
        $ms = MedicalScreening::whereDate('date_time', $date)->where('client_file_number', $value->client_file_number)->count();
        $value->status = 0;
        if($te && $ms){
          $value->status = 1;
        }
        array_push($clients, $value);
      }
      foreach ($user->clients2()->get() as $val) {
        $te = ClientStatus::whereDate('date', $date)->where('client_file_number', $val->client_file_number)->count();
        $ms = MedicalScreening::whereDate('date_time', $date)->where('client_file_number', $val->client_file_number)->count();
        $val->status = 0;
        if($te && $ms){
          $val->status = 1;
        }
        array_push($clients, $val);
      }
      foreach ($user->clients3()->get() as $val) {
        $te = ClientStatus::whereDate('date', $date)->where('client_file_number', $val->client_file_number)->count();
        $ms = MedicalScreening::whereDate('date_time', $date)->where('client_file_number', $val->client_file_number)->count();
        $val->status = 0;
        if($te && $ms){
          $val->status = 1;
        }
        array_push($clients, $val);
      }
      $data = ['count'=> $total,'clients'=> $clients,'userdata' => $user];
      return Response()->json(['status' => true, 'message' => 'User logged in successfully', 'data' => $data]);
    } else {
      return Response()->json(['status' => false, 'message' => '']);
    }
  }

  public function individualClients(Request $request){
    $code = $request->code;
    $fileno = $request->client_file_number;
    $date = date("Y-m-d");
    $te = ClientStatus::whereDate('date', $date)->where('client_file_number', $fileno)->count();
    $ms = MedicalScreening::whereDate('date_time', $date)->where('client_file_number', $fileno)->count();
    if($te == 0 && $ms == 0){
      return Response()->json(['status' => true, 'daily_status' => false]);
    }else{
      return Response()->json(['status' => false, 'daily_status' => true]);
    }
  }

  public function diningStatus(Request $request){
    $centerCode = $request->center_code;
    $code = $request->code;
    $date = date("Y-m-d H:i:s", strtotime($request->date));
    if($request->hasFile('selfie')) {
      $allowedfileExtension=['jpg','png'];
      $originName = $request->file('selfie')->getClientOriginalName();
      $fileName = pathinfo($originName, PATHINFO_FILENAME);
      $extension = $request->file('selfie')->getClientOriginalExtension();
      $fileName = $fileName.'_'.time().'.'.$extension;
      $check=in_array($extension,$allowedfileExtension);

      if($check){
        $request->file('selfie')->move(public_path('uploads/images'), $fileName);
      } else {
        return Response()->json(['status' => false, 'message' => 'Upload only image files']);
      }
      $url = asset('/public/uploads/images/'.$fileName);
      DB::table('dining_master')->insert(
            [
              'center_code'               => $centerCode,
              'cgiver_code'               => $code,
              'date'                      => $date,
              'status_dinning_clean'      => $request->status_dinning_clean,
              'status_staff_num_dinning'  => $request->status_staff_num_dinning,
              'status_clients_standing'   => $request->status_clients_standing,
              'status_hygiene_materials'  => $request->status_hygiene_materials,
              'status_server_ppe'         => $request->status_server_ppe,
              'status_waste_qty'          => $request->status_waste_qty,
              'status_dinning_waste_clean'=> $request->status_dinning_waste_clean,
              'status_text'               => $request->status_text,
              'dining_selfie_url'         => $url,
              'dining_selfie_latlong'     => json_encode(["lat" => $request->lat, "long" => $request->long])
            ]
          );
    } else {
      return Response()->json(['status' => false, 'message' => 'Image should be attached']);
    }
    return Response()->json(['status' => true, 'message' => 'Status added successfully']);
  }

  public function houseKeepingStatus(Request $request){
    $centerCode = $request->center_code;
    $code = $request->code;
    $date = date("Y-m-d H:i:s", strtotime($request->date));
    if($request->hasFile('selfie')) {
      $allowedfileExtension=['jpg','png'];
      $originName = $request->file('selfie')->getClientOriginalName();
      $fileName = pathinfo($originName, PATHINFO_FILENAME);
      $extension = $request->file('selfie')->getClientOriginalExtension();
      $fileName = $fileName.'_'.time().'.'.$extension;
      $check=in_array($extension,$allowedfileExtension);

      if($check){
        $request->file('selfie')->move(public_path('uploads/images'), $fileName);
      } else {
        return Response()->json(['status' => false, 'message' => 'Upload only image files']);
      }
      $url = asset('/public/uploads/images/'.$fileName);
      DB::table('housekeeping_master')->insert(
            [
              'center_code'           => $centerCode,
              'cgiver_code'           => $code,
              'date'                  => $date,
              'status_hkoverall'      => $request->status_hkoverall,
              'status_bathroom'       => $request->status_bathroom,
              'status_toiletries'     => $request->status_toiletries,
              'status_stocktaking'    => $request->status_stocktaking,
              'status_garbage'        => $request->status_garbage,
              'status_curtains'       => $request->status_curtains,
              'status_cobwebs'        => $request->status_cobwebs,
              'status_floormats'      => $request->status_floormats,
              'status_waterchlorine'  => $request->status_waterchlorine,
              'status_notes'          => $request->status_notes,
              'housekeeping_selfie_url' => $url,
              'housekeeping_latlong'     => json_encode(["lat" => $request->lat, "long" => $request->long])
            ]
          );
    } else {
      return Response()->json(['status' => false, 'message' => 'Image should be attached']);
    }
    return Response()->json(['status' => true, 'message' => 'Status added successfully']);
  }

  public function kitchenStatus(Request $request){
    $centerCode = $request->center_code;
    $code = $request->code;
    $date = date("Y-m-d H:i:s", strtotime($request->date));
    if($request->hasFile('image') && $request->hasFile('selfie')) {
      $allowedfileExtension=['jpg','png'];
      $originName = $request->file('image')->getClientOriginalName();
      $fileName = pathinfo($originName, PATHINFO_FILENAME);
      $extension = $request->file('image')->getClientOriginalExtension();
      $fileName = $fileName.'_'.time().'.'.$extension;
      $soriginName = $request->file('selfie')->getClientOriginalName();
      $sfileName = pathinfo($soriginName, PATHINFO_FILENAME);
      $sextension = $request->file('selfie')->getClientOriginalExtension();
      $sfileName = $sfileName.'_'.time().'.'.$sextension;
      $check=in_array($extension,$allowedfileExtension);

      if($check){
        $request->file('image')->move(public_path('uploads/images'), $fileName);
        $request->file('selfie')->move(public_path('uploads/images'), $sfileName);
      } else {
        return Response()->json(['status' => false, 'message' => 'Upload only image files']);
      }
      $url = asset('/public/uploads/images/'.$fileName);
      $surl = asset('/public/uploads/images/'.$sfileName);
      DB::table('kitchen_master')->insert(
          [
            'center_code'                    => $centerCode,
            'cgiver_code'                    => $code,
            'date'                           => $date,
            'status_stock_request'           => $request->status_stock_request,
            'status_store_clean'             => $request->status_store_clean,
            'status_stock_clearance'         => $request->status_stock_clearance,
            'status_kitchen_waste_disposal'  => $request->status_kitchen_waste_disposal,
            'status_kitchen_clean'           => $request->status_kitchen_clean,
            'status_utensil_washed'          => $request->status_utensil_washed,
            'status_text'                    => $request->status_text,
            'stock_image_url'                => $url,
            'kitchen_selfie_url'             => $surl,
            'kitchen_latlong'                => json_encode(["lat" => $request->lat, "long" => $request->long])
          ]
        );
    } else {
      return Response()->json(['status' => false, 'message' => 'Image should be attached']);
    }
    return Response()->json(['status' => true, 'message' => 'Status added successfully']);
  }

  public function medicalScreening(Request $request){
    $code = $request->code;
    $startdate = date("Y-m-d", strtotime($request->start_date));
    $enddate = date("Y-m-d", strtotime($request->end_date));
    if($request->hasFile('selfie')) {
      $clientFileNo = $request->client_file_number;
      $allowedfileExtension=['jpg','png'];
      $originName = $request->file('selfie')->getClientOriginalName();
      $fileName = pathinfo($originName, PATHINFO_FILENAME);
      $extension = $request->file('selfie')->getClientOriginalExtension();
      $fileName = $fileName.'_'.time().'.'.$extension;
      $check=in_array($extension,$allowedfileExtension);

      if($check){
        $request->file('selfie')->move(public_path('uploads/images'), $fileName);
      } else {
        return Response()->json(['status' => false, 'message' => 'Upload only image files']);
      }
      $url = asset('/public/uploads/images/'.$fileName);
      DB::table('medical_screening')->insert(
            [
              'date_time'   => date("Y-m-d H:i:s"),
              'cgiver_code'  => $code,
              'client_file_number' => $clientFileNo,
              'scalp_injury'=> $request->scalp_injury,
              'scalp_pediculosis'=> $request->scalp_pediculosis,
              'scalp_dandruff'=> $request->scalp_dandruff,
              'scalp_alopecia'=> $request->scalp_alopecia,
              'eyes_stye'=> $request->eyes_stye,
              'eyes_discharge'=> $request->eyes_discharge,
              'eyes_redness'=> $request->eyes_redness,
              'ears_pain'=> $request->ears_pain,
              'ears_discharge'=> $request->ears_discharge,
              'nose_block'=> $request->nose_block,
              'nose_bleeding'=> $request->nose_bleeding,
              'nose_cold'=> $request->nose_cold,
              'mouth_bo'=> $request->mouth_bo,
              'mouth_dentalcarriers'=> $request->mouth_dentalcarriers,
              'mouth_gumbleed'=> $request->mouth_gumbleed,
              'mouth_vomit'=> $request->mouth_vomit,
              'neck_thyroidglandswelling'=> $request->neck_thyroidglandswelling,
              'neck_lymphadenitis'=> $request->neck_lymphadenitis,
              'chest_tenderness'=> $request->chest_tenderness,
              'chest_galactorrhea'=> $request->chest_galactorrhea,
              'chest_sorenipple'=> $request->chest_sorenipple,
              'chest_cough'=> $request->chest_cough,
              'chest_wheezing'=> $request->chest_wheezing,
              'abdomen_pain'=> $request->abdomen_pain,
              'abdomen_distension'=> $request->abdomen_distension,
              'abdomen_diarrhea'=> $request->abdomen_diarrhea,
              'abdomen_constipation'=> $request->abdomen_constipation,
              'extremities_injury'=> $request->extremities_injury,
              'extremities_wound'=> $request->extremities_wound,
              'extremities_fracture'=> $request->extremities_fracture,
              'skin_rashes'=> $request->skin_rashes,
              'skin_discoloration'=> $request->skin_discoloration,
              'genitals_rashes'=> $request->genitals_rashes,
              'genitals_fungal'=> $request->genitals_fungal,
              'genitals_whitedischarge'=> $request->genitals_whitedischarge,
              'genitals_menorrhagia'=> $request->genitals_menorrhagia,
              'hospital_emergencies'=> $request->hospital_emergencies,
              'hospital_admission'=> $request->hospital_admission,
              'vital_temperature'=> $request->vital_temperature,
              'vital_pulse'=> $request->vital_pulse,
              'vital_respiration'=> $request->vital_respiration,
              'vital_bp_sys'=> $request->vital_bp_sys,
              'vital_bp_dias'=> $request->vital_bp_dias,
              'vital_weight'=> $request->vital_weight,
              'vital_bmi'=> $request->vital_bmi,
              'vital_period_start' => $startdate,
              'vital_period_end' => $enddate,
              'medical_screening_selfie_url' => $url,
              'medical_screening_latlong'=> json_encode(["lat" => $request->lat, "long" => $request->long])
            ]
          );
    } else {
      return Response()->json(['status' => false, 'message' => 'Image should be attached']);
    }
    return Response()->json(['status' => true, 'message' => 'Status added successfully']);
  }

  public function getMedicinesList(Request $request) {
    $fileno = $request->client_file_number;
    $med = Medicines::where('date', Medicines::where('client_file_number', $fileno)->max('date'))->where('client_file_number', $fileno)->orderBy('date','desc')->get();
    if($med){
      return Response()->json(['status' => true, 'data' => $med]);
    }else{
      return Response()->json(['status' => false]);
    }
  }

  public function getDietChart(Request $request) {
    $fileno = $request->client_file_number;
    $diet = Diet::where('diet_date', Diet::where('diet_client_file_number', 'LIKE' , "%{$fileno}%")->max('diet_date'))->where('diet_client_file_number', 'LIKE' , "%{$fileno}%")->first();
    //$diet = Diet::where("find_in_set('$fileno',diet_client_file_number)")->get();
    if($diet){
      return Response()->json(['status' => true, 'data' => $diet]);
    }else{
      return Response()->json(['status' => false]);
    }
  }

  public function getIcp() {
    $cat = Icp::distinct('icp_category')->pluck('icp_category');
    $sub_cat = Icp::pluck('icp_category','icp_specifics');
    $final = [];
    foreach ($cat as $ck => $cv) {
      $final[$ck]['cat_name'] = $cv;
      $final[$ck]['cat_image'] = asset("/public/uploads/icons/category/".strtolower(str_replace(' ', '_', $cv)).".png");
      $final[$ck]['sub_cat'] = [];
      foreach ($sub_cat as $key => $value) {
        if($value == $cv) {
          $im = asset("/public/uploads/icons/sub_category/".strtolower(str_replace(' ', '_', $key)).".png");
          $det = Icp::where('icp_specifics', $key )->pluck('icp_details');
          $a = ["name" => $key, "details" => $det , "sub_cat_image" => $im];
          array_push($final[$ck]['sub_cat'], $a);
        }
      }
    }
    if($final){
      return Response()->json(['status' => true, 'data' => $final]);
    }else{
      return Response()->json(['status' => false]);
    }
  }
  
  public function getCareGivers()
  {
	  exit;
    // $user = Caregivers::get();
    // if($user){
      // return Response()->json(['status' => true, 'message' => 'User logged in successfully', 'data' => $user]);
    // }else {
      // return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    // }
  }
  
}
