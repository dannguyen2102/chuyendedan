<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserTable extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_name',
        'user_password',
        'oderfood_id',
        'Change'
    ];
}
