<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Caregivers extends Model
{
  protected $table='caregivers';

  public $timestamps = false;

  protected $hidden = [
        'password',
  ];

  protected $casts = [
    'cgiver_coordinates' => 'json'
  ];

  public function rep_officier()
  {
    return $this->belongsTo('App\User', 'rep_officer_id', 'id');
  }
  
  public function clients()
  {
    return $this->hasMany('App\Clients', 'client_cgiver1', 'cgiver_code');
  }

  public function clients2()
  {
    return $this->hasMany('App\Clients', 'client_cgiver2', 'cgiver_code');
  }

  public function clients3()
  {
    return $this->hasMany('App\Clients', 'client_cgiver3', 'cgiver_code');
  }
  
  public function project_codes()
  {
    return $this->hasMany('App\CaregiverProjectCodes', 'caregiver_id', 'id')->with('project_code');
  }

}
