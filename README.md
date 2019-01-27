
# Requirements

## Volumes

- {HOST WATCH DIRECTORY}:/watch

## Environmental Variables

- SISMICS_BASE_URL=http://10.0.1.110:8100
- SISMICS_USERNAME=admin
- SISMICS_PASSWORD=admin
- PUID=1000
- PGID=1000


eg.

```
docker run --rm \
    -v /tmp/sismics-watch:/watch \
    -e "SISMICS_BASE_URL=http://10.0.1.110:8100" \
    -e "SISMICS_USERNAME=admin" \
    -e "SISMICS_PASSWORD=admin" \
    mediadepot/sismics-importer
```