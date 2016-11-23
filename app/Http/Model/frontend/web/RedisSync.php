<?php

namespace App\Http\Model\frontend\web;

use Illuminate\Database\Eloquent\Model;

class RedisSync extends Model
{
    protected $table = 'redis_sync';
    public $timestamps = false;
}
