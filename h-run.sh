
#!/usr/bin/env bash

cd `dirname $0`


#installing libuv1 if necessary
[[ `dpkg -s libuv1 2>/dev/null | grep -c "ok installed"` -eq 0 ]] && apt-get install -y libuv1

#Ubuntu 18.04 compat
[[ -e /usr/lib/x86_64-linux-gnu/libcurl-compat.so.3.0.0 ]] &&
        export LD_PRELOAD=libcurl-compat.so.3.0.0

[ -t 1 ] && . colors

. h-manifest.conf

[[ -z $CUSTOM_LOG_BASENAME ]] && echo -e "${RED}No CUSTOM_LOG_BASENAME is set${NOCOLOR}" && exit 1
[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}No CUSTOM_CONFIG_FILENAME is set${NOCOLOR}" && exit 1
[[ ! -f $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}Custom config ${YELLOW}$CUSTOM_CONFIG_FILENAME${RED}$"
CUSTOM_LOG_BASEDIR=`dirname "$CUSTOM_LOG_BASENAME"`
[[ ! -d $CUSTOM_LOG_BASEDIR ]] && mkdir -p $CUSTOM_LOG_BASEDIR

./packetcrypt ann $(< /hive/miners/custom/$CUSTOM_NAME/$CUSTOM_NAME.conf) $@ 2>&1 | tee $CUSTOM_LOG_BASEN$
