FROM ubuntu:14.04
MAINTAINER Chris Fortier <fortier@adobe.com>

RUN apt-get update && \
    apt-get -yq install \
      dnsutils netcat vim htop tcpdump strace python python-pip curl mysql-client telnet\
      && pip install awscli
RUN apt-get -yq install libio-socket-ssl-perl libnet-ssleay-perl sendemail

COPY .bash_profile /root/.bash_profile
