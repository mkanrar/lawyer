<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class questionAnswer extends Model
{
    protected $fillable = [
        'user_id', 'lawyer_id', 'question', 'answer'
    ];

    public function customer()
    {
        return $this->hasOne('App\User', 'id', 'user_id');
    }
}
