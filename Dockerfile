#remove or rename mainfest file to avoid gradle build error
# ./gradlew build
#test the built jar file
# java -jar .\build\libs\Task2-0.0.1-SNAPSHOT.jar
#build docker image
# docker build --tag task2:latest .
#test docker image
# docker run -d -p 8080:8080 task2/latest:latest
# curl http://localhost:8080
#push image to github registry
# docker login ghcr.io -u USERNAME -p PASSWORD
# docker tag <imageId or imageName> <hostname>:<repository-port>/<image>:<tag>
# docker tag 99d2a3b0ef5e ghcr.io/onderhamamcioglu/task2:latest
# docker push ghcr.io/onderhamamcioglu/task2:latest
FROM openjdk:18.0.2-jdk
RUN /usr/sbin/addgroup -S spring && /usr/sbin/adduser -S spring -G spring
USER spring:spring
WORKDIR /
COPY build/libs/Task2-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]