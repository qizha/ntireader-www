FROM maxexcloo/nginx-php:latest
MAINTAINER Qi Zhang <todayhill@gmail.com>

ENV DB_HOST localhost
ENV DB_USER root
ENV DB_PASSWORD admin!
RUN apt-get install --no-install-recommends -y -q git mysql-client-5.5
ADD config /config
RUN git clone https://github.com/qizha/buddhist-dictionary.git /tmp/buddhist/
RUN mv /tmp/buddhist/web /data/http
