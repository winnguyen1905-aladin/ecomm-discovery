# Use an official OpenJDK runtime as the base image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build file and source code
COPY pom.xml .
COPY src/ ./src/

# Install Maven and build the application
RUN apt-get update && apt-get install -y maven \
    && mvn clean package -DskipTests \
    && apt-get remove -y maven && apt-get autoremove -y

# Copy the built JAR file to the container
COPY target/serverregistry-0.0.1-SNAPSHOT.jar app.jar

# Expose the Eureka server port
EXPOSE 8761

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]