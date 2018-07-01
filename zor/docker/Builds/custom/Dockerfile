 # Dockerfile that modifies centos:centos6 to update, include Apache Web
# Server and OpenSSH Server, exposing the appropriate ports
FROM centos:centos6
MAINTAINER User Name tarzan@jungle.com

# Update the server OS
RUN yum -y upgrade

# Install Apache Web Server
RUN yum -y install httpd

# Install OpenSSH-Server
RUN yum -y install openssh-server

# Expose the SSH and Web Ports for attachment
EXPOSE 22 80

