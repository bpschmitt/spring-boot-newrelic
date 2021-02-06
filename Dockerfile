FROM openjdk:11.0.10-buster
RUN mkdir /app
ADD target/brad-demo-app.jar /app
EXPOSE 8080
WORKDIR /app