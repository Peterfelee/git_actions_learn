#!/bin/bash
source $(pwd)/auto_app_event/urlencode_event.sh

echo 'exec auto_app_event...'
bash ./auto_app_event/urlencode_event.sh
msg="${app_events[@]}"
echo $msg
echo 'begin python code...'
python ./ios/push_lark.py $1 $msg
