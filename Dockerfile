FROM eclipse-temurin:11.0.14.1_1-jdk-alpine
COPY build/libs/*.jar /app/ecram-eureka-server.jar
WORKDIR /app
# ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=dockerdev", "ecram-eureka-server.jar"]
ENTRYPOINT ["java", "-jar", "ecram-eureka-server.jar"]
#docker build -t ecram/eureka-server:0.0.1-SNAPSHOT .
#docker run -m 256m -d --name ecram-eureka-server  -p 8761:8761 ecram/eureka-server:0.0.1-SNAPSHOT
#docker stop ecram-eureka-server
#docker push ecram/eureka-server:0.0.1-SNAPSHOT
#docker pull ecram/eureka-server:0.0.1-SNAPSHOT