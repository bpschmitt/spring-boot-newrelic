FROM openjdk:11.0.10-buster
RUN mkdir /app
ADD target/brad-demo-app.jar /app
WORKDIR /app
EXPOSE 8080
