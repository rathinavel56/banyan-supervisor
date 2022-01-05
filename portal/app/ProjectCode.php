<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProjectCode extends Model
{
  protected $table='project_code_name';
  public function caregivers()
  {
    return $this->hasMany('App\CaregiverProjectCodes', 'project_code_id', 'id')->with('caregiver');
  }

}
