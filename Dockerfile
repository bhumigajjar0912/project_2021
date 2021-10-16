FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
RUN apt-get install apache2-utils
RUN apt clean
ADD index.html /var/www/html/index.html
ADD form.html /var/www/html/form.html
ADD output.html /var/www/html/output.html
ADD style.css /var/www/html/style.html
ADD cgi.py /var/www/cgi-bin/cgi.py

EXPOSE 80

# CMD apachectl -DFOREGROUND
# CMD apache2ctl -DFOREGROUND
# CMD apache2 -k start
ENTRYPOINT apache2ctl -DFOREGROUND