FROM openjdk:8
WORKDIR /app

COPY target/apigateway.jar /app
CMD ["java","-jar","apigateway.jar"]