# Use stable Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Create app directory
WORKDIR /app

# Copy JAR downloaded from CI workflow
COPY build/*.jar app.jar

# Expose application port
EXPOSE 8080

# Run application
ENTRYPOINT ["java", "-jar", "app.jar"]
