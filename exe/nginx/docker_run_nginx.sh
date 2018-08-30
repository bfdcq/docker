docker run --name nginx \
        -p 443:443\
        -p 80:80 \
        -v /data/docker/nginx/conf/nginx.conf:/data/apps/nginx/conf/nginx.conf \
        -v /data/docker/nginx/conf/ex-conf:/data/apps/nginx/ex-conf \
        -v /data/docker/nginx/static_page:/data/apps/nginx/html/static_page \
        -v /data/docker/nginx/static:/data/apps/nginx/static \
        -v /data/docker/nginx/logs:/data/apps/nginx/logs \
        -v /etc/letsencrypt/archive/bfdcq.com/fullchain1.pem:/data/apps/nginx/ssl/fullchain.pem \
        -v /etc/letsencrypt/archive/bfdcq.com/privkey1.pem:/data/apps/nginx/ssl/privkey.pem \
        -d nginx nginx -g 'daemon off;'
        #-i -t nginx /bin/bash
