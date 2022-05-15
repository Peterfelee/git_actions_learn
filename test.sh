#!/usr/bin/env bash

echo 'done test.sh'
echo 'i am sh bash file well done it'

cd 'ios'
python test.py
cd '..' || exit
path=$(pwd)
echo $path
echo 'exec auto_app_event...'
sh $path/auto_app_event/urlencode_event.sh
