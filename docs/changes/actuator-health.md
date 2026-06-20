# Actuator health endpoint

The registry now ships Spring Boot Actuator.

Exposed endpoints:
- `GET /actuator/health` — used by Docker/K8s probes.
- `GET /actuator/info` — build metadata.

Configuration (`application.yaml`):

```yaml
management:
  endpoints:
    web:
      exposure:
        include: health,info
```

The Dockerfile now defines a `HEALTHCHECK` against `/actuator/health` so containers report real readiness instead of a TCP-only check.
