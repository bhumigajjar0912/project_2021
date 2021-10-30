FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
RUN apt-get install apache2-utils
RUN apt clean
RUN apt inatall python3 -y

EXPOSE 80

# CMD apachectl -DFOREGROUND
# CMD apache2ctl -DFOREGROUND
# CMD apache2 -k start
ENTRYPOINT apache2ctl -DFOREGROUND
