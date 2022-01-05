<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Clients extends Model
{
  protected $table='clients_active';

  public function clientStatus()
  {
    return $this->hasMany('App\ClientStatus', 'client_file_number', 'client_file_number');
  }
  public function caregiver1()
  {
    return $this->belongsTo('App\Caregivers', 'client_cgiver1', 'cgiver_code');
  }
  public function caregiver2()
  {
    return $this->belongsTo('App\Caregivers', 'client_cgiver2', 'cgiver_code');
  }
  public function caregiver3()
  {
    return $this->belongsTo('App\Caregivers', 'client_cgiver3', 'cgiver_code');
  }
}
