<?php

namespace App\Models\lawyer;

use Illuminate\Database\Eloquent\Model;

class Lawyer_detail extends Model
{
    protected $fillable = [
        'user_id', 'education', 'year_of_experience', 'office_address', 'court_id', 'primary_practice_id', 'enroll_number', 'year_of_passing', 'created_at', 'updated_at',
    ];
}
