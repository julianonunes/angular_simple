FROM node:7.10

MAINTAINER Juliano Nunes Silva Oliveira (Reply do Brasil)

RUN mkdir /var/www

# Just for dev
RUN npm install @angular/cli@v1.1.0-rc.2 -g

WORKDIR /var/www

# Opting for COPY over ADD as there is no need of auto extracting any compressed file
COPY . /var/www

RUN if [ ! -f packages.json ]; then npm install; fi

CMD if [ ! -f packages.json ]; then npm start; else /bin/bash; fi