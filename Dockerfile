FROM debian:wheezy

MAINTAINER Henrique Chehad <hchehad@gmail.com>

RUN apt-get update
RUN apt-get install -y python python-dev python-setuptools python-pip
RUN apt-get install -y libcurl4-openssl-dev

ADD requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt