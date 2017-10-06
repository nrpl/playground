FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/spring-boot-docker-demo-0.1.0.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.edg=file:/dev/urandom -jar /app.jar
