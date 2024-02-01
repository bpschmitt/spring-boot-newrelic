FROM openjdk:11.0.10-buster

RUN mkdir /app
RUN mkdir /agent

RUN curl -o /agent/newrelic-agent.jar https://download.newrelic.com/newrelic/java-agent/newrelic-agent/current/newrelic-agent.jar
ADD target/brad-demo-app.jar /app
WORKDIR /app

EXPOSE 8080

CMD ["java", "-javaagent:/agent/newrelic-agent.jar", "-jar", "/app/brad-demo-app.jar"]

