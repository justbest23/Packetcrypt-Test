#!/usr/bin/env bash

#stats_raw=`curl --connect-timeout 2 --max-time 5 --silent --noproxy '*' http://127.0.0.1:60050`

stats_raw = tail -1000 $CUSTOM_LOG_BASENAME.log | grep goodrate | tail -1
khs = `echo $stats_raw | awk '{print $4}'

#echo $khs
#echo $stats
