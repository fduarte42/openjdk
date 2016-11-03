FROM openjdk:8-jdk-alpine

RUN apk update && \
    apk add apache-ant && \
    apk add git tar mksh socat

ENV ANT_HOME /usr/share/java/apache-ant
ENV PATH $PATH:$ANT_HOME/bin

COPY ./src /opt/app/src

WORKDIR /opt/app/src

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

VOLUME ["/opt/app"]

EXPOSE 80

CMD ["/entrypoint.sh"]
