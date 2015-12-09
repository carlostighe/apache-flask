############################################################
# Dockerfile to build Flask App
# Based on
############################################################

# Set the base image
FROM debian:latest

# File Author / Maintainer
MAINTAINER Carlos Tighe

RUN apt-get update && apt-get install -y apache2 \
    libapache2-mod-wsgi \
    build-essential \
    python \
    python-dev\
    python-pip \
 && apt-get clean \
 && apt-get autoremove \
 && rm -rf /var/lib/apt/lists/*

COPY ./app/requirements.txt /var/www/apache-flask/requirements.txt
RUN pip install -r /var/www/apache-flask/requirements.txt
COPY ./app /var/www/apache-flask

 CMD ["/bin/bash"]