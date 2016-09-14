FROM nginx:1.10

MAINTAINER "billqiang" <whenjonny@gmail.com>

ADD  nginx.conf         /etc/nginx/nginx.conf

RUN  mkdir -p /data/code && mkdir -p /data/log && mkdir -p /data/log/nginx
RUN  chown -R www-data.www-data /data/code /data/log

EXPOSE 80 443
VOLUME ["/data"]
