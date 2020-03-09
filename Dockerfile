FROM nginx:1.16-alpine

LABEL maintainer="Bo-Yi Megic <420636220@qq.com>"

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
