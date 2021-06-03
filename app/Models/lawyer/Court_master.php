<?php

namespace App\Models\lawyer;

use Illuminate\Database\Eloquent\Model;

class Court_master extends Model
{
    protected $fillable = [
        'id', 'name', 'created_at', 'updated_at',
    ];
}