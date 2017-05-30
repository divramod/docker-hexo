FROM node:7.0
MAINTAINER Arvid Petermann <arvidpetermann@gmail.com>
RUN npm install -g hexo
WORKDIR /blog
VOLUME /blog
EXPOSE 4000
