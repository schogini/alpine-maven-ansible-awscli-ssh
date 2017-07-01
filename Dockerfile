# docker build -t ansible_maven_awscli .
# FROM alpine:latest
FROM maven:3-jdk-8-alpine
MAINTAINER Gayatri S Ajith gayatri@schogini.com

RUN apk update && \
    apk upgrade && \
    apk add ansible openssh py-pip tzdata openntpd 
RUN pip install awscli && pip install boto

RUN rm -rf /var/cache/apk/*

ENV SET_CONTAINER_TIMEZONE true
# RUN ntpd -s 
