# Use an OpenJDK base image
FROM maven:3.9.6-eclipse-temurin-17 AS build
# Set the working directory
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -D SkipTests

FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
# Copy the JAR file into the container
COPY target/Blog_Portal_Backend_full-0.0.1-SNAPSHOT.jar /app.jar
# Expose the port your application runs on
EXPOSE 8080
# Command to run the application
CMD ["java", "-jar", "app.jar"]
