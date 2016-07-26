FROM nginx:1.10

MAINTAINER "billqiang" <whenjonny@gmail.com>

ADD  nginx.conf         /etc/nginx/nginx.conf
ADD  sites-enabled/*    /etc/nginx/conf.d/

RUN  mkdir /data && mkdir /data/code && mkdir /data/log && mkdir /data/log/nginx
RUN  chown -R www-data.www-data /data/code /data/log

VOLUME ["/data"]
