<?php

namespace App\Http\Controllers\sync;

use App\Http\Model\frontend\web\ScrapySync;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Model\frontend\web\RedisSync;

$s = new SyncRedis();
$s->isSyncRedis();

class SyncRedis extends Controller
{
    public $sgnal;
    private $redis_sync;

    public function __construct()
    {
        parent::__construct();
        $this->redis_sync = new RedisSync();
    }

    // 记录队列同步信息
    public function isSyncRedis()
    {
        while (true) {
            $this->sgnal = $this->redis->rpop('mongo');

            if ($this->sgnal) {
                $mongo_array['mongo'] = $this->sgnal;
                $mongo_array['status'] = true;
                $mongo_array['create_time'] = date('Y-m-d H:i:s');
                $this->redis_sync->insert($mongo_array);
            }

            sleep(1);
        }
    }
}
