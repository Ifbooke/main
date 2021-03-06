<?php

namespace App\Http\Controllers\sync;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Model\frontend\web\RedisSync;

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
        set_time_limit(0); // 不超时

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
