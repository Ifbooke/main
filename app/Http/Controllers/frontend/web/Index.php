<?php

namespace App\Http\Controllers\frontend\web;

use App\Http\Controllers\Controller;
use App\Http\Model\frontend\web\TopNews;

class Index extends Controller
{
    public function index()
    {
        if (!$this->redis->get('top_news')) {  // 今日头条
            $this->redis->set('top_news', json_encode(TopNews::all()->where('status', 1)->toArray()));
        }
        $top_news =  json_decode($this->redis->get('top_news'), true);

        foreach ($top_news as $k => $v) {
            switch ($v['sign']) {
                case 1:
                    $top['head'][] = (object)$v;
                    break;
                case 2:
                    $top['central'][] = (object)$v;
                    break;
                case 3:
                    $top['bottom'][] = (object)$v;
                    break;
            }
        }

        return view('frontend.web.index', ['top' => $top]);
    }

}
