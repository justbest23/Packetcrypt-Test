
#!/usr/bin/env bash
# This code is included in /hive/bin/custom function

[[ -z $CUSTOM_TEMPLATE ]] && echo -e "${YELLOW}CUSTOM_TEMPLATE is empty${NOCOLOR}" && return 1
[[ -z $CUSTOM_URL ]] && echo -e "${YELLOW}CUSTOM_URL is empty${NOCOLOR}" && return 1

CUSTOM_ALGO=packetcrypt
conf="${CUSTOM_URL} -p ${CUSTOM_TEMPLATE} ${CUSTOM_USER_CONFIG}"

#replace tpl values in whole file

[[ -z $CUSTOM_CONFIG_FILENAME ]] && echo -e "${RED}No CUSTOM_CONFIG_FILENAME is set${NOCOLOR}" && return$
echo "$conf" > $CUSTOM_CONFIG_FILENAME
