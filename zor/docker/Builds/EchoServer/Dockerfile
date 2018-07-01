# Dockerfile based on the latest Centos 7 image - non-privileged user entry
FROM centos:latest
MAINTAINER tarzan@jungle.com

RUN useradd -ms /bin/bash user

CMD "echo" "This is a custom message for Tarzan"



USER user
