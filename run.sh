#!/bin/sh
DEFAULT_API_HOST="http://192.168.6.63:10063"
[ -n "$API_HOST" ] && DEFAULT_API_HOST=$API_HOST

API_HOST=${DEFAULT_API_HOST//\//\\/}
sed -i -e "s/\${API_HOST}/$API_HOST/" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"
