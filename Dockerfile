#remove or rename mainfest file to avoid gradle build error
# ./gradlew build
#test the built jar file
# java -jar .\build\libs\Task2-0.0.1-SNAPSHOT.jar
#build docker image
# docker build --build-arg JAR_FILE=build/libs/Task2-0.0.1-SNAPSHOT.jar -t task2/latest .
#test docker image
# docker run -d -p 8080:8080 task2/latest:latest
# curl http://localhost:8080
FROM openjdk:18.0.2-jdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]