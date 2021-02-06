# spring-boot-newrelic

Simple Spring Boot app which is instrumented with the New Relic Java agent.  Init container is used to download the latest version of the agent and is mounted to the app container via the `/agent-dir` volume.

```
kubectl apply -f k8s/deployment.yaml
kubectl port-forward svc/hello-world-service 8000:8000
```

Two endpoints:

- http://localhost:8000 - Simple home page
- http://localhost:8000/random - Returns random number
