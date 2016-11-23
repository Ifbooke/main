<?php

namespace App\Http\Controllers\frontend\web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use MongoClient;
use App\Http\Model\frontend\web\TopNews;
use App\Http\Model\frontend\web\ScrapySync;

class Queue extends Controller
{
    public $top;
    public $sync;
    public $conn;

    public function __construct()
    {
        parent::__construct();
        $this->top = new TopNews(); // 今日头条
        $this->sync = new ScrapySync(); // 同步记录表
        $this->conn = new MongoClient(); // Mongo数据
    }

    public function index()
    {
        $db = $this->conn->mains->tops->find();

        foreach ($db as $k => $v) {
            $mongo_array['title'] =  $v['title'];
            $mongo_array['desc'] =  $v['desc'];
            $mongo_array['url'] =  '/top';
            $mongo_array['pic_url'] =  $v['pic_url'];
            $mongo_array['sign'] =  3;
            $mongo_array['content'] = implode(' ', $v['content']);

            if ($this->top->insert($mongo_array)) {
                $status = true; // 同步成功
                $this->conn->mains->tops->remove(array('_id' => $v['_id']), array('_id')); // 删除Mongo数据
                $this->redis->lpush('mongo', $mongo_array['title']); // 同步到Redis
            } else {
                $status  = false; // 同步失败
            }

            $this->sync->insert(array('status' => $status, 'mongo_id' => $v['_id']));  // 插入同步记录表中
        }
    }
}
