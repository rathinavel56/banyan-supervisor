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
}
