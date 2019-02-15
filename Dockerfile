# dockerfile to build image for JBoss EAP 6.4

# start from debian:jessie
FROM debian:jessie

COPY ./wgetrc :./etc/
COPY ./99HttpProxy :./etc/apt/apt.conf.d
COPY ./proxy.sh :./etc/profile.d/

# file author / maintainer
MAINTAINER "André Luís Sabino" "sabinoandreluis@gmail.com"

# update OS
RUN apt-get update && apt-get install vim -y