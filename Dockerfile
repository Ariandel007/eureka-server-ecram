FROM eclipse-temurin:11.0.14.1_1-jdk-alpine
COPY build/libs/*.jar /app/ecram-eureka-server.jar
WORKDIR /app
# ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=dockerdev", "ecram-eureka-server.jar"]
ENTRYPOINT ["java", "-jar", "ecram-eureka-server.jar"]