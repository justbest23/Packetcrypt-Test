#!/usr/bin/env bash
# kludgey hardcoded path for now

cd /hive/miners/custom/packetcrypt

source ./h-manifest.conf

# maybe eventually we'll patch packetcrypt so it has an API for this, or something

#stats_raw=`curl --connect-timeout 2 --max-time 5 --silent --noproxy '*' http://127.0.0.1:60050`

stats_raw=`tail -1000 $CUSTOM_LOG_BASENAME.log | grep goodrate | tail -1`

echo stats_raw =  $stats_raw

khs=`echo $stats_raw | awk '{print $4}'`

goodrate_raw=`echo $stats_raw | sed "s/goodrate: /\n/"|tail -1`

#stats=`echo $goodrate_raw | jq something`


echo khs = $khs
echo goodrate_raw = $goodrate_raw
echo stats $stats

stats=$(jq -nc \
	--argjson hs "[$khs]"\
	--arg ver "$CUSTOM_VERSION" \
	--arg ths "$khs" \
	'{ hs: $hs, hs_units: "kes", algo : "chacha", ver:$ver }')

echo stats2 = $stats
[[ -z $khs ]] && khs=0
[[ -z $stats ]] && stats="null"
