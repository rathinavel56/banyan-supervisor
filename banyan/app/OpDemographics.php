<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OpDemographics extends Model
{
  protected $table='op_demographics';

  public function op_address()
  {
    return $this->belongsTo('App\OpAddress', 'id', 'id');
  }
  public function op_assocfactors()
  {
    return $this->belongsTo('App\OpAssocfactors', 'id', 'id');
  }
  public function op_barriers()
  {
    return $this->belongsTo('App\OpBarriers', 'id', 'id');
  }
  public function op_das()
  {
    return $this->belongsTo('App\OpDas', 'id', 'id');
  }
  public function op_diagnosis()
  {
    return $this->belongsTo('App\OpDiagnosis', 'id', 'id');
  }
  public function op_edu_work()
  {
    return $this->belongsTo('App\OpEduWork', 'id', 'id');
  }
  public function op_family()
  {
    return $this->belongsTo('App\OpFamily', 'id', 'id');
  }
  public function op_firstscreening()
  {
    return $this->belongsTo('App\OpFirstscreening', 'id', 'id');
  }
  public function op_idcards()
  {
    return $this->belongsTo('App\OpIdcards', 'id', 'id');
  }
  public function op_illness()
  {
    return $this->belongsTo('App\OpIllness', 'id', 'id');
  }  
}
