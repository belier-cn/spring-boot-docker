FROM openjdk:8-jdk-alpine
MAINTAINER belier@belier.cn
VOLUME /tmp
ADD target/spring-boot-docker.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
