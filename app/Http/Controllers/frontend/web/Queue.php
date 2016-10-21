<?php

namespace App\Http\Controllers\frontend\web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use MongoClient;
use MongoDB;
use MongoCursor;

class Queue extends Controller
{
    public function index()
    {
        $con = new MongoClient('localhost:27017')
        $db = $con->mains->tops->find();
        print_r($db);
    }
}
