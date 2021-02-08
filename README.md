# spring-boot-newrelic

Simple Spring Boot app which is instrumented with the New Relic Java agent.  An `init` container is used to download the latest version of the agent and mount it to the app container in the `/agent-dir` volume.

```
kubectl create secret generic nrlicensekey --from-literal=nrlicensekey=<YOUR NEW RELIC LICENSE KEY>
kubectl apply -f k8s/deployment.yaml
kubectl port-forward svc/hello-world-service 8000
```

Two endpoints:

- http://localhost:8000 - Simple home page
- http://localhost:8000/random - Returns random number
