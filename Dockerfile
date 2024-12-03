FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY bynetworklistorg.jar bynetworklistorg.jar
EXPOSE 3000
ENTRYPOINT exec java $JAVA_OPTS -jar bynetworklistorg.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar bynetworklistorg.jar
