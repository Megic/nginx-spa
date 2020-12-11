FROM nginx:1.16-alpine

LABEL maintainer="Megic <420636220@qq.com>"

COPY default.conf /etc/nginx/conf.d/default.conf
COPY run.sh /bin/
RUN chmod +x /bin/run.sh
EXPOSE 80

CMD ["/bin/run.sh"]

