FROM debian:bullseye

RUN apt update -y && apt install mariadb-server -y

COPY ./tools/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/script.sh /

RUN chmod +x /script.sh 

CMD [ "./script.sh" ]
