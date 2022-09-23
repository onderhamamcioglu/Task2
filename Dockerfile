# ./gradlew build && java -jar build/libs/gs-spring-boot-docker-0.1.0.jar
FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]