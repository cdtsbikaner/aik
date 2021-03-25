FROM docker pull cdtsbikaner/tanujwebserver:latest
MAINTAINER "cdtsbikaner"
EXPOSE 80
CMD [ "/usr/sbin/httpd","-C","FOREGROUND" ]
