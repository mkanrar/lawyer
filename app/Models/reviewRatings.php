<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class reviewRatings extends Model
{
    protected $fillable = [
        'name'
    ];

    public function customer()
    {
        return $this->hasOne('App\User', 'id', 'given_by');
    }
}
