<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Spatie\Permission\Traits\HasRoles;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasRoles, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'name',
        'email',
        'mobile_no',
        'mobile_no_verified_at',
        'gender',
        'password',
        'city_id',
        'status',
        'date_of_birth',
        'address',
        'city',
        'latitude',
        'longitude',
        'uniqid_val',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function city()
    {
        return $this->hasOne('App\Models\City', 'id', 'city_id');
    }
    public function role()
    {
        return $this->belongsToMany('App\Models\modelHasRoles','model_id');
    }
    public function ratings()
    {
        return $this->hasMany('App\Models\reviewRatings'::class);
    }
    public function lawyer_details()
    {
        return $this->hasOne('App\Models\lawyer\Lawyer_detail'::class);
    }
    public function questionAnswer()
    {
        return $this->hasMany('App\Models\questionAnswer','lawyer_id','id');
    }
}
