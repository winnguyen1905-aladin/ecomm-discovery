# README quickstart

Adds a README for the discovery service.

Sections:
- Purpose: standalone Eureka registry for the platform.
- Local run: `./mvnw spring-boot:run` (port 8761).
- Docker run: `docker build` + `docker run -p 8761:8761`.
- Dashboard: `http://localhost:8761/`.
- Client config snippet for `eureka.client.service-url.defaultZone`.

Documents the standalone settings and links the Boot/Cloud compatibility matrix.
