FROM nginx:1.23

RUN mkdir /nginx-cache && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone && \
    curl https://updater.elemenx.com/weiyunjian/int/int.crt > /etc/nginx/int.crt && \
    curl https://updater.elemenx.com/weiyunjian/int/int.key > /etc/nginx/int.key && \ 
    curl https://updater.elemenx.com/weiyunjian/int/nginx.conf > /etc/nginx/nginx.conf
