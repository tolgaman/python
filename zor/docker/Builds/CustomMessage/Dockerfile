# Dockerfile based on the latest Centos 7 image - non-privileged user entry
FROM centos:latest
MAINTAINER tarzan@jungle.com

RUN useradd -ms /bin/bash user

RUN echo "EXPORT 192.168.0.0" >> /etc/exports.list

USER user
