<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Staff extends Model
{
    use HasFactory;
    protected $fillable = [
        'staff_name',
        'gender',
        'staff_day',
        'staff_phone',
        'staff_email',
        'Date_Created',
        'Change',
        'password'
    ];
}
