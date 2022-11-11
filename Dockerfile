FROM nginx:1.19.3-alpine

COPY ./nginx/nginx.conf     /etc/nginx/nginx.conf
COPY ./nginx/security.conf  /etc/nginx/security.conf
COPY ./nginx/conf.d         /etc/nginx/conf.d
# COPY ./static/              /var/www

CMD ["nginx", "-g", "daemon off;"]