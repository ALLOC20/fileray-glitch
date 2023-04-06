#! /bin/bash

# define xray
XRAY="/app/xray/xray"
XRAY_CF="/app/xray/config.json"

# define filebrowser
FILE="/app/fbdir/filebrowser"
FILE_DB="/app/fbdir/filebrowser.db"
FILE_SEE="/app/canbesee"

# download geo app
wget -N -O /app/xray/geoip.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
wget -N -O /app/xray/geosite.dat https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -N -O ${FILE_SEE}/V2rayN电脑端.zip https://github.com/2dust/v2rayN/releases/latest/download/v2rayN-Core.zip
wget -N -O ${FILE_SEE}/V2rayNG安卓端.apk https://github.com/2dust/v2rayNG/releases/latest/download/v2rayNG_1.7.38_arm64-v8a.apk

# permission allow
chmod +x ${XRAY}
chmod +x ${FILE}

# start all server
${FILE} -d ${FILE_DB} -r ${FILE_SEE} -a 0.0.0.0 -p 8001 &
${XRAY} run -c ${XRAY_CF}


