# Dockerfile based on the latest Centos 7 image - non-privileged user entry
FROM centos:latest
MAINTAINER tarzan@jungle.com

RUN useradd -ms /bin/bash user

RUN echo "EXPORT 192.168.0.0" >> /etc/exports.list

RUN yum update -y
RUN yum install -y net-tools wget
RUN cd ~ && 
USER user
