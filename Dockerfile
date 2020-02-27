FROM node:12.16.1
MAINTAINER Guillermo Guerrero 'wolf.fox1985@gmail.com'

RUN apt-get update -qq && apt-get install -y default-jdk

RUN yarn global add turtle-cli
RUN turtle setup:android

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
