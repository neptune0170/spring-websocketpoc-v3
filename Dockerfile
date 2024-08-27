#Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged jar file into the container
COPY websocket-tracker/target/websocket-tracker-0.0.1-SNAPSHOT.jar /app/websocket-tracker.jar

# Expose the port the application will run on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/websocket-tracker.jar"]