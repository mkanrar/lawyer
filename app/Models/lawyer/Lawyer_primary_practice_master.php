<?php

namespace App\Models\lawyer;

use Illuminate\Database\Eloquent\Model;

class Lawyer_primary_practice_master extends Model
{
    protected $fillable = [
        'name', 'status', 'created_at', 'updated_at',
    ];
}
