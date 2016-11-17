<?php

namespace App\Http\Controllers\frontend\web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Model\frontend\web\TopNews;

class Top extends Controller
{
    public function detail($id)
    {

        $new_dateil = TopNews::where('id', $id)->first();
        if ($new_dateil) {
            $new_dateil = $new_dateil->toArray();
        }

        return view('frontend.web.top', ['data' => $new_dateil]);
    }
}
