# Context-load smoke test

Adds a minimal test so CI verifies the Spring context boots.

- `ServerRegistryApplicationTests.contextLoads()` under `src/test`.
- Runs with `webEnvironment = RANDOM_PORT` to avoid binding 8761.
- Asserts the Eureka server auto-configuration bean is registered.

This catches broken beans or invalid `application.yaml` properties before they ship.
