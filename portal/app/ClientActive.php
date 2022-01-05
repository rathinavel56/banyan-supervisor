<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ClientActive extends Model
{
  protected $table='clients_active';

  public function giver1()
  {
    return $this->belongsTo('App\Caregivers', 'client_cgiver1', 'cgiver_code');
  }
  public function giver2()
  {
    return $this->belongsTo('App\Caregivers', 'client_cgiver2', 'cgiver_code');
  }
  public function giver3()
  {
    return $this->belongsTo('App\Caregivers', 'client_cgiver3', 'cgiver_code');
  }
}
