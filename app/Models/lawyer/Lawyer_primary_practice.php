<?php

namespace App\Models\lawyer;

use Illuminate\Database\Eloquent\Model;

class Lawyer_primary_practice extends Model
{
    protected $fillable = [
        'user_id', 'primary_practice_id', 'created_at', 'updated_at',
    ];
}
