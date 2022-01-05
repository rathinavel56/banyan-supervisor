<?php

namespace App\Http\Controllers;

use DB;
use App\Caregivers;
use App\CaseManagers;
use App\Clients;
use App\KitchenMaster;
use App\ProjectCode;
use App\Users;
use App\ClientStatus;
use App\OpDemographics;
use App\Language;
use App\CaregiverProjectCodes;
use App\ClientActive;
use App\HouseKeepingStatus;
use App\DiningMaster;
use App\Parameters;
use App\Medicines;
use App\Diet;
use App\Icp;
use App\IcpNotes;
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

  public function commonLogin(Request $request)
  {
    $user = Users::where('username', $request->username)
    ->where('pass_word', $request->password)->first();
    if($user){
		$user->user_group_id = (int)$user->user_group_id;
		return Response()->json(['status' => true, 'message' => 'User logged in successfully', 'data' => $user]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    }
  }
  
  public function getCenters(Request $request)
  {
	$caregivers = Caregivers::select('id')->where('rep_officer_id', $request->rep_officer_id)->get();
	if (!empty($caregivers)) {
		$caregivers = array_column($caregivers->toArray(), 'id');
		$caregiverProjects = CaregiverProjectCodes::with('project_code', 'caregiver')->whereIn('caregiver_id', $caregivers)->get();
		if ($caregiverProjects){
		  return Response()->json(['status' => true, 'message' => 'Successfully', 'data' => $caregiverProjects]);
		} else {
		  return Response()->json(['status' => false, 'message' => 'No records']);
		}
	} else {
		return Response()->json(['status' => false, 'message' => 'No records']);
	}
  }
  
  public function getCenterCaregiver(Request $request)
  {
	$projectCodes = ProjectCode::with('caregivers')->get();
	if ($projectCodes) {
		$projectCodesCp = array();
		foreach($projectCodes as $projectCode) {
			$sub = $projectCode;
			$projectCodesCp[] = $sub;
		}
		return Response()->json(['status' => true, 'message' => 'Successfully', 'data' => $projectCodesCp]);
	} else {
	  return Response()->json(['status' => false, 'message' => 'No records']);
	}
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
  
  public function clients(Request $request)
  {
    $clients = Clients::select('id', 'client_file_number', 'client_fname')
					->where('center_code', $request->project_code)
					->where('client_cgiver1', $request->code)
					->orWhere('client_cgiver2', $request->code)
					->orWhere('client_cgiver2', $request->code)
					->where('client_active', 1)
					->get();

    if($clients){
      return Response()->json(['status' => true, 'message' => 'Success', 'data' => $clients]);
    }else {
      return Response()->json(['status' => false, 'message' => 'No Records']);
    }
  }
  
  public function clientDetail(Request $request)
  {
	$date = explode('T',$request->dateDetail);
	$date = date_create($date[0]);
	$currentDate = date_format($date,"Y-m-d");
	$data = array();
	$gre = '>=';
	$lte = '<=';
	switch ($request->mode) {
		case 0:
			if ($request->nextPrev == 'Prev') {
				$data = IcpNotes::where('client_file_number', $request->code)->where('created_at', '<', $currentDate)->first();
			} else if ($request->nextPrev == 'Next') {
				$data = IcpNotes::where('client_file_number', $request->code)->where('created_at', '>', $currentDate. ' 23:59:59')->first();
			} else {
				$data = IcpNotes::where('client_file_number', $request->code)->where('created_at', $currentDate)->first();
			}
			break;
		case 1:
			if ($request->nextPrev == 'Prev') {
				$data = ClientStatus::where('client_file_number', $request->code)->where('date', '<', $currentDate. ' 00:00:00')->first();
			} else if ($request->nextPrev == 'Next') {
				$data = ClientStatus::where('client_file_number', $request->code)->where('date', '>', $currentDate. ' 23:59:59')->first();
			} else {
				$data = ClientStatus::where('client_file_number', $request->code)->where('date', $gre, $currentDate. ' 00:00:00')
							   ->where('date', $lte, $currentDate. ' 23:59:59')->first();
			}
			break;
		case 2:
			if ($request->nextPrev == 'Prev') {
				$data = MedicalScreening::where('client_file_number', $request->code)->where('date_time', '<', $currentDate.'  00:00:00')->first();
			} else if ($request->nextPrev == 'Next') {
				$data = MedicalScreening::where('client_file_number', $request->code)->where('date_time', '>', $currentDate. ' 23:59:59')->first();
			} else {
				$data = MedicalScreening::where('client_file_number', $request->code)->where('date_time', $gre, $currentDate.'  00:00:00')->where('date_time', $lte, $currentDate. ' 23:59:59')->first();
			}
			break;
		case 3:
			$data = Diet::where('diet_date', Diet::where('diet_client_file_number', $request->code)->max('diet_date'))->where('diet_client_file_number', $request->code)->first();		
			break;
		case 4:
			$data = Medicines::where('date', Medicines::where('client_file_number', $request->code)->max('date'))->where('client_file_number', $request->code)->first();
			break;
		case 5:
			if ($request->nextPrev == 'Prev') {
				$data = HouseKeepingStatus::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', '<', $currentDate. ' 00:00:00')->first();
			} else if ($request->nextPrev == 'Next') {
				$data = HouseKeepingStatus::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', '>', $currentDate. ' 23:59:59')->first();
			} else {
				$data = HouseKeepingStatus::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', $gre, $currentDate. ' 00:00:00')
								   ->where('date', $lte, $currentDate. ' 23:59:59')->first();
			}
			break;
		case 6:
			if ($request->nextPrev == 'Prev') {
				$data = KitchenMaster::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', '<', $currentDate. ' 00:00:00')->first();
			} else if ($request->nextPrev == 'Next') {
				$data = KitchenMaster::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', '>', $currentDate. ' 23:59:59')->first();
			} else {
				$data = KitchenMaster::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', $gre, $currentDate. ' 00:00:00')
							   ->where('date', $lte, $currentDate. ' 23:59:59')->first();
			}
			break;
		case 7:
			if ($request->nextPrev == 'Prev') {
				$data = DiningMaster::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', '<', $currentDate. ' 00:00:00')->first();
			} else if ($request->nextPrev == 'Next') {
				$data = DiningMaster::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)
							   ->where('date', '>', $currentDate. ' 23:59:59')->first();
			} else {
				$data = DiningMaster::where('cgiver_code', $request->cgiver_code)->where('center_code', $request->center_code)->where('date', $gre, $currentDate. ' 00:00:00')
							   ->where('date', $lte, $currentDate. ' 23:59:59')->first();
			}			
			break;
	  default:
	}    
    if($data){
      return Response()->json(['status' => true, 'message' => 'successfully', 'data' => $data]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not Records']);
    }
  }
  
  public function generateXls(Request $request)
  {
	$date = new DateTime('now');
	$date->modify('+3 month');
	$date = $date->format('Y-m-d');
	echo $date;
  }

  public function generatePin(Request $request)
  {
    $code = $request->code;
    $pin = $request->pin;
    $user =  Caregivers::with('project_codes')->where('cgiver_code', $code)->first();
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

  public function languages(Request $request)
  {
	$data = Language::all();
	return Response()->json(['status' => true, 'message' => 'Successfully', 'data' => $data]);
  }
  public function loginPin(Request $request)
  {
    $code = $request->code;
    $pin = $request->pin;
    $parameters = Parameters::with('languages')->get();
    $user =  Caregivers::with('project_codes', 'rep_officier')->where('cgiver_code', $code)->where('pin',$pin)->first();
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
	  $user->cgiver_rep_officer = (!empty($user->rep_officier)) ? $user->rep_officier->full_name : '';
      $data = ['count'=> $total,'clients'=> $clients,'userdata' => $user];
	  $parameterFormatted = array();
	  if (isset($request->language_id)) {
		foreach ($parameters as $parameter) {
			$subArray = array();
			$subArray['id'] = $parameter['id'];
            $subArray['category_code'] = $parameter['category_code'];
            $subArray['category'] = $parameter['category'];
            $subArray['sub_category'] = $parameter['sub_category'];
            $subArray['score'] = $parameter['score'];
            $subArray['score_text']= $parameter['score_text'];
            $subArray['score_description']= $parameter['score_description'];
			$languages = $parameter->languages->toArray();
			foreach ($languages as $language) {
				if ($request->language_id  == $language['language_id']) {
					$subArray['score_text'] = $language['translation_text'];
					$subArray['score_description'] = $language['translation_description'];
				}
			}
			$parameterFormatted[] = $subArray; 
		}
	  } else {		  
		foreach ($parameters as $parameter) {
			$subArray = array();
			$subArray['id'] = $parameter['id'];
            $subArray['category_code'] = $parameter['category_code'];
            $subArray['category'] = $parameter['category'];
            $subArray['sub_category'] = $parameter['sub_category'];
            $subArray['score'] = $parameter['score'];
            $subArray['score_text']= $parameter['score_text'];
            $subArray['score_description']= $parameter['score_description'];
			$parameterFormatted[] = $subArray;
		} 
	  }
      return Response()->json(['status' => true, 'message' => 'User logged in successfully', 'data' => $data, 'parameters' => $parameterFormatted]);
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
        $url = 'public/uploads/images/'.$fileName;
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
      $url = 'public/uploads/images/'.$fileName;
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
	$icps = IcpNotes::whereDate('created_at', $request->create_date)->where('client_file_number', $fileno)->get();
    $te = ClientStatus::whereDate('date', $date)->where('client_file_number', $fileno)->count();
    $ms = MedicalScreening::whereDate('date_time', $date)->where('client_file_number', $fileno)->count();
    if($te == 0 && $ms == 0){
      return Response()->json(['status' => true, 'daily_status' => false, 'icps' => $icps]);
    }else{
      return Response()->json(['status' => false, 'daily_status' => true, 'icps' => $icps]);
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
      $url = 'public/uploads/images/'.$fileName;
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
      $url = 'public/uploads/images/'.$fileName;
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
      $url = 'public/uploads/images/'.$fileName;
      $surl = 'public/uploads/images/'.$sfileName;
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
	if ($request->height) {
		DB::table('clients_active')
        ->where('client_file_number', $request->client_file_number)
        ->limit(1)
        ->update(array('client_height' => $request->height));
	}
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
      $url = 'public/uploads/images/'.$fileName;
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
      $final[$ck]['cat_image'] = "public/uploads/icons/category/".strtolower(str_replace(' ', '_', $cv)).".png";
      $final[$ck]['sub_cat'] = [];
      foreach ($sub_cat as $key => $value) {
        if($value == $cv) {
          $im = "public/uploads/icons/sub_category/".strtolower(str_replace(' ', '_', $key)).".png";
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
  
  public function addIcp(Request $request) {
	$date = explode('T',$request->dateDetail);
	$date = date_create($date[0]);
	$currentDate = date_format($date,"Y-m-d");
    $fileno = $request->code;
	$icp = IcpNotes::where('created_at', $currentDate)->where('client_file_number', $fileno)->first();
    if($icp) {
		$icp->notes = $request->notes;
		$icp->save();
		return Response()->json(['status' => true]);
    } else {
		DB::table('icp_notes')->insert(
            [
              'client_file_number'   => $fileno,
              'created_at'  => $currentDate,
              'notes' => $request->notes
            ]
          );
		return Response()->json(['status' => true]);
    }
  }
  public function getCareGivers()
  {
	$user = Caregivers::with('rep_officier', 'project_codes')->get();
    if($user){
      return Response()->json(['status' => true, 'message' => 'Success', 'data' => $user]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    }
  }
  public function getClients()
  {
	$user = ClientActive::with('giver1', 'giver2', 'giver3')->get();
    if($user){
      return Response()->json(['status' => true, 'message' => 'Success', 'data' => $user]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    }
  }
  public function updateClient(Request $request)
  {
	DB::statement('update clients_active set center_code="'.addslashes($request->center_code).'", center_name="'.addslashes($request->center_name).'", client_fname="'.addslashes($request->client_fname).'", client_lname="'.addslashes($request->client_lname).'", client_cgiver1="'.addslashes($request->client_cgiver1).'", client_cgiver2="'.addslashes($request->client_cgiver2).'", client_cgiver3="'.addslashes($request->client_cgiver3).'", client_doa="'.addslashes($request->client_doa).'", client_adm_type="'.addslashes($request->client_adm_type).'", client_age="'.addslashes($request->client_age).'", client_gender="'.addslashes($request->client_gender).'", client_religion="'.addslashes($request->client_religion).'", client_state="'.addslashes($request->client_state).'", client_city="'.addslashes($request->client_city).'", client_district="'.addslashes($request->client_district).'", client_ps="'.addslashes($request->client_ps).'", client_post="'.addslashes($request->client_post).'", client_taluk="'.addslashes($request->client_taluk).'", client_location="'.addslashes($request->client_location).'", client_marital="'.addslashes($request->client_marital).'", client_idmark="'.addslashes($request->client_idmark).'", client_occupation="'.addslashes($request->client_occupation).'", client_education="'.addslashes($request->client_education).'", client_language="'.addslashes($request->client_language).'", client_relative_avl="'.addslashes($request->client_relative_avl).'", client_relative_address_1="'.addslashes($request->client_relative_address_1).'", client_relative_address_2="'.addslashes($request->client_relative_address_2).'", client_daff="'.addslashes($request->client_daff).'", client_family_type="'.addslashes($request->client_family_type).'", client_family_size="'.addslashes($request->client_family_size).'", client_family_phone="'.addslashes($request->client_family_phone).'", client_referred="'.addslashes($request->client_referred).'", client_active="'.addslashes($request->client_active).'", client_discharged="'.addslashes($request->client_discharged).'", client_height="'.addslashes($request->client_height).'" where id="'.$request->id.'"');
	// $data = array(
		// 'center_code' => $request->center_code,
		// 'center_name' => $request->center_name,
		// 'client_fname' => $request->client_fname,
		// 'client_lname' => $request->client_lname,
		// 'client_cgiver1' => ($request->giver1) ? $request->giver1['cgiver_cm_id'] : '',
		// 'client_cgiver2' => ($request->giver2) ? $request->giver2['cgiver_cm_id'] : '',
		// 'client_cgiver3' => ($request->giver3) ? $request->giver3['cgiver_cm_id'] : '',
		// 'client_doa' => $request->client_doa,
		// 'client_adm_type' => $request->client_adm_type,
		// 'client_age' => $request->client_age,
		// 'client_gender' => $request->client_gender,
		// 'client_religion' => $request->client_religion,
		// 'client_state' => $request->client_state,
		// 'client_city' => $request->client_city,
		// 'client_district' => $request->client_district,
		// 'client_ps' => $request->client_ps,
		// 'client_post' => $request->client_post,
		// 'client_taluk' => $request->client_taluk,
		// 'client_location' => $request->client_location,
		// 'client_marital' => $request->client_marital,
		// 'client_idmark' => $request->client_idmark,
		// 'client_occupation' => $request->client_occupation,
		// 'client_education' => $request->client_education,
		// 'client_language' => $request->client_language,
		// 'client_relative_avl' => $request->	client_relative_avl,
		// 'client_relative_address_1' => $request->client_relative_address_1,
		// 'client_relative_address_2' => $request->client_relative_address_2,
		// 'client_daff' => $request->client_daff,
		// 'client_family_type' => $request->client_family_type,
		// 'client_family_size' => $request->client_family_size,
		// 'client_family_phone' => $request->client_family_phone,
		// 'client_referred' => $request->client_referred,
		// 'client_active' => $request->client_active,
		// 'client_discharged' => $request->client_discharged,
		// 'client_height' => $request->client_height);
	// DB::table('clients_active')
        // ->where('id', $request->id)
        // ->limit(1)
        // ->update($data);
    return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function ops(Request $request)
  {
	$data = OpDemographics::with('op_address', 'op_assocfactors', 'op_barriers', 'op_das', 'op_diagnosis', 'op_edu_work', 'op_family', 'op_firstscreening', 'op_idcards', 'op_illness')->get();
    return Response()->json(['status' => true, 'message' => 'Success', 'data' => $data]);
  }
  public function opbyid(Request $request)
  {
	$data = OpDemographics::with('op_address', 'op_assocfactors', 'op_barriers', 'op_das', 'op_diagnosis', 'op_edu_work', 'op_family', 'op_firstscreening', 'op_idcards', 'op_illness')->where('file_number', $request->file_number)->first();
    return Response()->json(['status' => true, 'message' => 'Success', 'data' => $data]);
  }
  public function opCreate(Request $request)
  {
	$result = DB::select("SHOW TABLES");
	$tables = json_decode(json_encode($result),true);
	$ops = array();
	$ops[] = 'op_demographics';
	foreach($tables as $key => $value) {
		$tableName = current($value);
		if (strpos($tableName, 'op_') !== false && $tableName != 'op_demographics') {
			$ops[] = $tableName;
		}
	}
	$id = '';
	foreach($ops as $op) {
		$columns = DB::select("SHOW columns FROM ".$op);
		$columns = json_decode(json_encode($columns),true);
		$fieldValues = array();
		$fieldList = array();
		if (!empty($request[$op])) {
			if ($op != 'op_demographics') {
				$fieldValues[] = $id;
				$fieldList[] = 'id';
			}
			foreach ($columns as $key => $value) {
				$fieldValues[] = addslashes($request[$op][$value['Field']]);
				$fieldList[] = $value['Field'];
			}
			if(!empty($fieldList)) {
				DB::statement('insert into '.$op.' ('.implode(',', $fieldList).') values ("'.implode('","', $fieldValues).'")');
				if ($op == 'op_demographics') {
					$id = DB::getPdo()->lastInsertId();
				}
			}
		}
	}
    return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function opUpdate(Request $request)
  {
	$result = DB::select("SHOW TABLES");
	$tables = json_decode(json_encode($result),true);
	$ops = array();
	foreach($tables as $key => $value) {
		$tableName = current($value);
		if (strpos($tableName, 'op_') !== false) {
			$ops[] = $tableName;
		}
	}
	foreach($ops as $op) {
		$columns = DB::select("SHOW columns FROM ".$op);
		$columns = json_decode(json_encode($columns),true);
		$fields = array();
		if (!empty($request[$op])) {
			foreach ($columns as $key => $value) {
				$fields[$value['Field']] = addslashes($request[$op][$value['Field']]);
			}
			if(!empty($fields)) {
				DB::table($op)
				->where('id', $request[$op]['id'])
				->limit(1)
				->update($fields);
			}
		}
	}
    return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function opDelete(Request $request)
  {
	DB::statement('delete from op_demographics where file_number="'.$request->file_number.'"');
	return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function casemanagers(Request $request)
  {
	$user = CaseManagers::with('center')->get();
    if($user){
      return Response()->json(['status' => true, 'message' => 'Success', 'data' => $user]);
    }else {
      return Response()->json(['status' => false, 'message' => 'Not a valid user']);
    }
  }
  public function updateCasemanager(Request $request)
  {
	DB::statement('update casemanagers set cm_password="'.addslashes($request->cm_password).'", cm_Name="'.addslashes($request->cm_Name).'", cm_Center="'.addslashes($request->cm_Center).'", cm_Contact="'.addslashes($request->cm_Contact).'" where cm_ID="'.addslashes($request->cm_ID_OG).'"');
	// DB::table('casemanagers')
        // ->where('cm_ID', $request->cm_ID_OG)
        // ->limit(1)
        // ->update(array(
		// 'cm_password' => $request->cm_password,
		// 'cm_Name' => $request->cm_Name,
		// 'cm_Center' => $request->cm_Center,
		// 'cm_Contact' => $request->cm_Contact));
    return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function clientList(Request $request)
  {
    $clients = ProjectCode::with('caregivers')->get();
    if($clients){
      return Response()->json(['status' => true, 'message' => 'Success', 'data' => $clients]);
    }else {
      return Response()->json(['status' => false, 'message' => 'No Records']);
    }
  }
  public function addCasemanager(Request $request)
  {
	  $id = "BCM_0001"; 
	  $user = CaseManagers::orderBy('cm_ID', 'DESC')->first();
	  if (!empty($user->cm_ID)) {
		$id = $user->cm_ID;
		$id = str_replace("BCM_", "", $user->cm_ID);
		$id = (int) $id;
		$id = $id + 1;
		$id = sprintf("%04s", $id);
	  }
	  DB::table('casemanagers')->insert(array(
		'cm_ID' => $id,
		'cm_userID' => $id,
		'cm_password' => $request->cm_password,
		'cm_Name' => $request->cm_Name,
		'cm_Center' => $request->cm_Center,
		'cm_Contact' => $request->cm_Contact));
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function addClient(Request $request)
  {
	  $date = date("Y");
	  $id = $date."2017/0001"; 
	  $client = ClientActive::orderBy('id', 'DESC')->first();
	  if (!empty($client)) {
		$id = $client->id;
		$id = (int) $id;
		$id = $id + 1;
		$id = $date."/".sprintf("%04s", $id);
	  } else {
		$id = $date."/0001";
	  }
	  DB::table('clients_active')
        ->insert(array(
		'center_code' => $request->center_code,
		'center_name' => $request->center_name,
		'client_file_number' => $id,
		'client_fname' => $request->client_fname,
		'client_lname' => $request->client_lname,
		'client_cgiver1' => $request->client_cgiver1,
		'client_cgiver2' => $request->client_cgiver2,
		'client_cgiver3' => $request->client_cgiver3,
		'client_doa' => $request->client_doa,
		'client_adm_type' => $request->client_adm_type,
		'client_age' => $request->client_age,
		'client_gender' => $request->client_gender,
		'client_religion' => $request->client_religion,
		'client_state' => $request->client_state,
		'client_city' => $request->client_city,
		'client_district' => $request->client_district,
		'client_ps' => $request->client_ps,
		'client_post' => $request->client_post,
		'client_taluk' => $request->client_taluk,
		'client_location' => $request->client_location,
		'client_marital' => $request->client_marital,
		'client_idmark' => $request->client_idmark,
		'client_occupation' => $request->client_occupation,
		'client_education' => $request->client_education,
		'client_language' => $request->client_language,
		'client_relative_avl' => $request->	client_relative_avl,
		'client_relative_address_1' => $request->client_relative_address_1,
		'client_relative_address_2' => $request->client_relative_address_2,
		'client_daff' => $request->client_daff,
		'client_family_type' => $request->client_family_type,
		'client_family_size' => $request->client_family_size,
		'client_family_phone' => $request->client_family_phone,
		'client_referred' => $request->client_referred,
		'client_active' => $request->client_active,
		'client_discharged' => $request->client_discharged,
		'client_height' => $request->client_height));
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function addCaregivers(Request $request)
  {
	  $user = Users::where('emp_code', $request->rep_officier['cm_ID'])->first();
	  DB::table('caregivers')
        ->insert(array(
		'emp_code' => $request->emp_code,
		'username' => $request->username,
		'password' => $request->password,
		'pin' => $request->pin,
		'cgiver_code' => $request->cgiver_code,
		'cgiver_name' => $request->cgiver_name,
		'cgiver_desig' => $request->cgiver_desig,
		'cgiver_mob' => $request->cgiver_mob,
		'rep_officer_id' => $user->id,
		'cgiver_cm_id' => $request->rep_officier['cm_ID']/*,
		'cgiver_profile_url' => $request->cgiver_profile_url*/
		));
		$id = DB::getPdo()->lastInsertId();
		if (!empty($request->centers)) {
			foreach($request->centers as $center) {
				DB::table('caregiver_project_codes')
				->insert(array(
					'caregiver_id' => $id,
					'project_code_id' => $center['id']
				));
			}
		}
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function updateCaregivers(Request $request)
  {
	  $user = Users::where('emp_code', $request->rep_officier['cm_ID'])->first();
	  
	  DB::statement('update caregivers set emp_code="'.addslashes($request->emp_code).'", username="'.addslashes($request->username).'", password="'.addslashes($request->password).'", pin="'.addslashes($request->pin).'", cgiver_code="'.addslashes($request->cgiver_code).'", cgiver_name="'.addslashes($request->cgiver_name).'", cgiver_desig="'.addslashes($request->cgiver_desig).'", cgiver_mob="'.addslashes($request->cgiver_mob).'", rep_officer_id="'.addslashes($user->id).'", cgiver_cm_id="'.addslashes($request->rep_officier['cm_ID']).'" where id="'.addslashes($request->id).'"');
	  
	  // DB::table('caregivers')
        // ->where('id', $request->id)
        // ->limit(1)
        // ->update(array(
		// 'emp_code' => $request->emp_code,
		// 'username' => $request->username,
		// 'password' => $request->password,
		// 'pin' => $request->pin,
		// 'cgiver_code' => $request->cgiver_code,
		// 'cgiver_name' => $request->cgiver_name,
		// 'cgiver_desig' => $request->cgiver_desig,
		// 'cgiver_mob' => $request->cgiver_mob,
		// 'rep_officer_id' => $request->rep_officier['id'],
		// 'cgiver_cm_id' => $request->rep_officier['cm_ID']/*,
		// 'cgiver_profile_url' => $request->cgiver_profile_url*/
		// ));
		if (!empty($request->centers)) {
			DB::table('caregiver_project_codes')->where('caregiver_id', $request->id)->delete();
			foreach($request->centers as $center) {
				DB::table('caregiver_project_codes')
				->insert(array(
					'caregiver_id' => $request->id,
					'project_code_id' => $center['id']
				));
			}
		}
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function deleteCasemanager(Request $request)
  {
	  DB::table('casemanagers')->where('id', $request->id)->delete();
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function deleteClient(Request $request)
  {
	  DB::table('clients_active')->where('id', $request->id)->delete();
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function deleteCaregivers(Request $request)
  {
	  DB::table('caregivers')->where('id', $request->id)->delete();
	  DB::table('caregiver_project_codes')->where('caregiver_id', $request->id)->delete();
	  return Response()->json(['status' => true, 'message' => 'Success', 'data' => null]);
  }
  public function supervisorClients(Request $request) {
	$caregivers = Caregivers::select('id', 'cgiver_code')->where('rep_officer_id', $request->rep_officer_id)->get();
	if (!empty($caregivers)) {
		$caregivers = array_column($caregivers->toArray(), 'cgiver_code');
		$clients = Clients::select('id', 'center_name', 'center_code','client_file_number', 'client_fname', 'client_cgiver1 as caregiver1', 'client_cgiver2 as caregiver2', 'client_cgiver3 as caregiver3')->with('caregiver1', 'caregiver2', 'caregiver3')
					->whereIn('client_cgiver1', $caregivers)
					->orWhereIn('client_cgiver2', $caregivers)
					->orWhereIn('client_cgiver3', $caregivers)
					->where('client_active', 1)
					->get();

		if($clients){
		  return Response()->json(['status' => true, 'message' => 'Success', 'data' => $clients]);
		}else {
		  return Response()->json(['status' => false, 'message' => 'No Records']);
		}
	} else {
		return Response()->json(['status' => false, 'message' => 'No records']);
	}
  }
  public function dummy(Request $request) {
	  $caregivers = Caregivers::where('id', '<', 95)->get()->toArray();
	  foreach($caregivers as $caregiver) {
		  if (!empty($caregiver['cgiver_code'])) {
			Users::where('username', $caregiver['username'])->update(array(
				'emp_code' => $caregiver['cgiver_code']
			));
		  }
	  }
  }
}
