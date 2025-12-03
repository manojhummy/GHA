# Use OpenJDK image
FROM openjdk:17-jdk-slim

# Create app directory
WORKDIR /app

# Copy jar file (GitHub Actions will unzip into build/)
COPY build/*.jar app.jar

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
