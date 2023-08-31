FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install nginx -y
RUN mkdir -p /etc/nginx/ssl &&  apt-get install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=CH/ST=VD/L=LAUSANNE/O=42/OU=42/CN=grenaud-.42.fr/UID=grenaud-"

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

#EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
