FROM ubuntu
LABEL name="akash"
RUN apt update ; apt install apache2 -y
WORKDIR /var/www/html
COPY index.html .
CMD [ "apache2ctl", "-D", "FOREGROUND" ]
