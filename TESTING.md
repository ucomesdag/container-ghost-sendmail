# Testing

To test the container before publication, run these steps.

1. `container_hash=$(podman build . -q)`.
2. Run: `podman run --privileged --tty --interactive -p 2368:2368 ${container_hash}`.
4. Navigate to `http://localhost:2368`.
