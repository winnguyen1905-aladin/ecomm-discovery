# HA peer mode (rejected for now)

Explored running the registry as two cross-registered peers for high availability.

Proposed setup:
- `application-peer.yaml` with `register-with-eureka: true` and `fetch-registry: true`.
- Two nodes (`peer1`, `peer2`) listing each other in `defaultZone`.
- Per-peer `eureka.instance.hostname`.

Decision: not merged. The team chose to keep a single standalone node behind a restart policy to reduce operational complexity. Revisit when client count or uptime SLAs grow.

Kept as documentation for a future HA rollout.
