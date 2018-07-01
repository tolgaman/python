# This image is based on CentOS 7 and will start apache in each container
FROM centos:latest
MAINTAINER tarzan@jungle.com

RUN yum update -y
RUN yum install -y httpd net-tools

RUN echo "This is a cutome index file built during image build" > /var/www/html/index.html

EXPOSE 80

ENTRYPOINT apachectl "-DFOREGROUND"

