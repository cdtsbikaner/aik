#  Deploy Tomcat 8.5.64  Server with previously created image available at Dockerhub 
#  cdtsbikaner/base-centos:v1

FROM cdtsbikaner/base-centos:v1

MAINTAINER "Maninder Singh Bhui  maninderbhui@gmail.com"

COPY Dockerfile  /tmp/

RUN mkdir  /opt/tomcat

RUN wget -O /tomcat.tar.gz   https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz


RUN tar xfz /tomcat.tar.gz -C /opt/tomcat


RUN mv  /opt/tomcat/apache-tomcat-8.5.64    /opt/tomcat/apache

RUN  mv   /opt/tomcat/apache/*     /opt/tomcat/.

EXPOSE  8080

CMD [ "/opt/tomcat/bin/catalina.sh","run" ]
