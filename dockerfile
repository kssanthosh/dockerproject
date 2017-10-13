FROM  nginx:latest

MAINTAINER NGINX Docker Maintainers “docker-maint@nginx.com”

RUN apt-get update -y

RUN apt-get install php -y

RUN apt-get install git -y

RUN git clone https://github.com/kssanthosh/dockerproject.git

COPY  /usr/share/nginx/html/

RUN /etc/init.d/nginx restart

WORKDIR /usr/share/nginx/html
