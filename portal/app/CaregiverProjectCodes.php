<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CaregiverProjectCodes extends Model
{
  protected $table='caregiver_project_codes';

  public function project_code()
  {
    return $this->belongsTo('App\ProjectCode', 'project_code_id', 'id');
  }
  public function caregiver()
  {
    return $this->belongsTo('App\Caregivers', 'caregiver_id', 'id')->select('id','emp_code','cgiver_code','cgiver_name', 'cgiver_desig', 'cgiver_mob', 'rep_officer_id', 'cgiver_cm_id', 'cgiver_profile_url');
  }
}
