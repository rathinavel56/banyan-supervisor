<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Parameters extends Model
{
  protected $table='parameters';
  public function languages()
  {
    return $this->hasMany('App\Translation', 'parameter_id', 'id');
  }
}
