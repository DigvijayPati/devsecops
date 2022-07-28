FROM jenkins/jenkins:2.360-alpine

USER root
RUN apk update \
    && apk add --no-cache curl docker jq tzdata \
    && rm -rf /var/cache/apk/*

ENV TZ Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY plugins.txt /usr/share/jenkins/plugins.txt
COPY zap-2.11.1/ /usr/local/bin/zap-2.11.1/
RUN jenkins-plugin-cli --plugin-file /usr/share/jenkins/plugins.txt

USER jenkins
