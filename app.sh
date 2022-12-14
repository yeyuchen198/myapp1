#!/bin/sh

install -m 755 /usr/local/app/myapp /usr/local/bin/myapp
install -m 755 /usr/local/app/v2ctl /usr/local/bin/v2ctl


#run myapp
# mkdir /etc/myapp
# cp /usr/local/app/app.json /etc/myapp/app.json
# tice: already "COPY app.json /etc/myapp/app.json" at Dockerfile
/usr/local/bin/myapp -config=/etc/myapp/app.json &

#run nginx
# CMD ["nginx", "-g", "daemon off;"]
nginx -g 'daemon off;'
# /usr/local/nginx/sbin/nginx -g 'daemon off;'



