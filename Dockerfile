FROM openjdk:8-jdk-alpine

COPY ./src /usr/src/app

ENV BUILD_CMD "compile.sh"
ENV EXEC_CMD "startup.sh"

COPY ./entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

WORKDIR /usr/src/app

VOLUME ["/usr/src/app"]

EXPOSE 80

CMD ["/entrypoint.sh"]
