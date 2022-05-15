#!/usr/bin/env bash

echo 'done test.sh'
echo 'i am sh bash file well done it'

cd 'ios'
python test.py
cd '..' || exit
sh auto_app_event/urlencode_event.sh
