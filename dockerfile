# Use Java 17 runtime environment
FROM eclipse-temurin:17-jre-alpine

# Set working directory
WORKDIR /app

# Copy the application JAR file into the container
COPY target/app.jar /app/app.jar

# Expose the container port (as shown in the image)
EXPOSE 8085

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]