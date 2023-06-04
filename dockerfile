FROM openjdk:8
WORKDIR /app
EXPOSE 8081
COPY target/apigateway.jar /app
CMD ["java","-jar","apigateway.jar"]