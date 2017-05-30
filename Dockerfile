FROM nginx
MAINTAINER Arvid Petermann "arvidpetermann@gmail.com"

ADD default.conf /etc/nginx/conf.d/default.conf

ENV HEXO_VERSION 3.3.7

# Grab dependencies
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup | bash - && apt-get update && apt-get install -y curl git nodejs
RUN npm install -g hexo@${HEXO_VERSION}

# Create hexo base files
RUN hexo init /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
RUN npm install

VOLUME /usr/share/nginx/html/source

CMD hexo generate && nginx -g "daemon off;"
