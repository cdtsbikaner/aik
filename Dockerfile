#   Base Scratch image for Tomcat  /  any other deployment
FROM  centos:7.7.1908

MAINTAINER "maninder singh bhui maninderbhui@gmail.com"

RUN  yum update  -y   &&  \
     yum install java-1.8* -y  &&   \
     yum install wget  elinks netstat  vim curl  net-tools  bind-utils epel-release  unzip -y && \
     yum clean all  &&  \
     rm  -rf  /var/cache/yum/*

COPY Dockerfile  /root/
