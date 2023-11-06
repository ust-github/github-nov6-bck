ARG BASE_JAVA_IMAGE
FROM $BASE_JAVA_IMAGE

ARG JAR_FILE
USER root
WORKDIR /opt/app

COPY  $JAR_FILE.jar .

RUN chown -Rf appuser:appuser /opt/app/

USER appuser

EXPOSE 8085