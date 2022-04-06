FROM nginx:1.21-alpine

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone && \
    cat /etc/nginx/nginx.conf && \
    curl https://updater.elemenx.com/weiyunjian/int/int.crt > /etc/nginx/int.crt && \
    curl https://updater.elemenx.com/weiyunjian/int/int.key > /etc/nginx/int.key && \ 
    curl https://updater.elemenx.com/weiyunjian/int/ca.pem > /etc/nginx/ca.pem && \ 
    curl https://updater.elemenx.com/weiyunjian/int/nginx.conf > /etc/nginx/nginx.conf

