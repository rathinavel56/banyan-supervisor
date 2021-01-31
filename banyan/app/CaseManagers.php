<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CaseManagers extends Model
{
  protected $table='casemanagers';

  public $timestamps = false;

  protected $hidden = [
        'password',
  ];
  public function center()
  {
    return $this->belongsTo('App\ProjectCode', 'cm_Center', 'id');
  }

}
