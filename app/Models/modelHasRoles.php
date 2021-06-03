<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class modelHasRoles extends Model
{
    /**
     * Get the comments for the blog post.
     */
    protected $fillable = [
        'role_id', 'model_id', 'model_type'
    ];
}
    
