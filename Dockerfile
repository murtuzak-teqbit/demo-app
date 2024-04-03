# Use the official Maven image with Java 17 as a base image
FROM maven:3.8.4-openjdk-17-slim AS builder

# Set the working directory in the container
WORKDIR /app

# Copy all the contents of your project to the container
COPY . .

# Build the application using the Maven Wrapper
RUN mvn package

# Expose port 8080
EXPOSE 8080

# Run the application using the Maven Wrapper
CMD ["java", "-jar", "target/spring-boot-0.0.1-SNAPSHOT.jar"]

