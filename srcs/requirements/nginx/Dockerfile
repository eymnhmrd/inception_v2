FROM debian:bullseye

RUN apt update -y && apt install nginx openssl -y
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj "/C=MA/ST=KH/L=KH/O=42/OU=1337/CN=localhost"

COPY nginx.conf /etc/nginx

CMD [ "nginx", "-g" , "daemon off;"]