# Use Java 21 runtime
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy JAR into container
COPY target/rest-demo.jar app.jar

# Expose port
EXPOSE 8080

# Run the app
ENTRYPOINT ["java","-jar","app.jar"]
