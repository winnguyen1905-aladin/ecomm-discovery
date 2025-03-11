# Secure the Eureka dashboard

The dashboard and `/eureka/**` registry API now require HTTP Basic auth.

- Credentials come from `eureka.username` / `eureka.password` (override via env).
- CSRF is disabled only for `/eureka/**` so clients can still register/renew.

Clients must update their service URL:

```yaml
eureka:
  client:
    service-url:
      defaultZone: http://user:pass@discovery:8761/eureka/
```

For local dev, set the password to a known value or run the `local` profile.
