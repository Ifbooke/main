#!/bin/bash

echo '已经入BASH 正在准备执行队列'
/usr/local/php/bin/php /www/work/main/app/Http/Controllers/shell/SyncRedis.php >> /www/work/main/web.txt &