<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Translation extends Model
{
  protected $table='translations';

  public $timestamps = false;
  
  public function languages()
  {
    return $this->hasMany('App\Language', 'language_id', 'id');
  }

}
