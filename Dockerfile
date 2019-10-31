FROM tutum/nginx
RUN rm /etc/nginx/sites-enabled/default
ADD ./myblog-nginx /etc/nginx/sites-enabled
COPY ./public /srv/public
