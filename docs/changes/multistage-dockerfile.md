# Multi-stage Dockerfile

The Eureka registry image is now built in two stages.

- Builder: `maven:3.9-eclipse-temurin-21` compiles the fat jar.
- Runtime: `eclipse-temurin:21-jre` runs only `app.jar`.

Benefits:
- Final image dropped from ~700MB to ~230MB.
- No Maven, apt cache, or `.m2` in the runtime layer.
- Build no longer depends on a host `target/` directory, so it works in clean CI.

No runtime behavior changes; still listens on `8761`.
