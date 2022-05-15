#!/usr/bin/env bash
#
# urlencode - codificando sua string para usar em URLs
urlencode() {
    local LC_ALL=C
    local string="$*"
    local length="${#string}"
    local char
    for (( i = 0; i < length; i++ )); do
    char="${string:i:1}"
    if [[ "$char" == [a-zA-Z0-9.~_-] ]]; then
        printf "$char">>temp
    else
        printf '%%%02X' "'$char">>temp
    fi
    done
}


host_url="https://editor-res.vidma.com/ios/ulink/activity_image_page.html"
title="title="
imagePath="imagePath="
app_event_file_name="app_event_list.text"

parseApp_event() {
    titleString=""
    imagePathString=""
    maxNumber=$(sed -n '$=' $app_event_file_name)
    number=1
    echo "总计生成的app_event个数:"$((maxNumber/2))
    
    while [ $number -lt $maxNumber ]
    do
    titleString=$(sed -n "${number}p" $app_event_file_name)
    number=$((number+1))
    imagePathString="ios/activity/"$(sed -n "${number}p" $app_event_file_name)"@3x.png"
    echo $titleString
    echo $imagePathString
    $(> temp)
    urlencode $titleString
    str1=$(cat temp)
    $(> temp)
    urlencode $imagePathString
    str2=$(cat temp)
    line=$((number/2))
    echo "第${line}个是:"$host_url'?'$title$str1'&'$imagePath$str2
    number=$((number+1))
    done
}


#触发urlencode
parseApp_event
