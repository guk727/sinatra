FROM ubuntu
MAINTAINER gk727 "gk727@hotmail.com"
ENV REFRESHED_AT 2016-05-22

RUN apt-get update
RUN apt-get -y install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]
