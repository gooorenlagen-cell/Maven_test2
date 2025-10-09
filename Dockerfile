
FROM openjdk:17.0.1-jdk-slim
WORKDIR /app
COPY /app/target/*.jar app.jar
EXPOSE 8086
ENTRYPOINT ["java", "-jar", "app.jar"]