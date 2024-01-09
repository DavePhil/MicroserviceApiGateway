FROM openjdk:17-alpine
WORKDIR /app

# Install Spring Boot buildpacks
RUN apk add spring-boot-buildpacks

# Build application
RUN spring-boot:build-image --build-arg JAR_FILE=apigateway.jar

# Expose port
EXPOSE 8081

# Run application
CMD ["java", "-jar", "apigateway.jar"]