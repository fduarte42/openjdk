FROM openjdk:8-jdk-alpine

COPY ./src /usr/src/app

ENV BUILD_CMD "javac Main.java"
ENV EXEC_CMD "java Main"

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

WORKDIR /usr/src/app

VOLUME ["/usr/src/app"]

EXPOSE 80

CMD ["/entrypoint.sh"]
