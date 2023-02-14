FROM nginx:1.23

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone && \
    mkdir /nginx-cache && \
    curl https://updater.elemenx.com/weiyunjian/int/int.crt > /etc/nginx/int.crt && \
    curl https://updater.elemenx.com/weiyunjian/int/int.key > /etc/nginx/int.key && \ 
    curl https://updater.elemenx.com/weiyunjian/int/nginx.conf > /etc/nginx/nginx.conf
