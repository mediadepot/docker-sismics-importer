FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install --no-install-recommends -y curl && \
    rm -rf /var/lib/apt/lists/* && \
    curl -k -O -L https://github.com/sismics/docs/releases/download/v1.5/docs-importer-linux && \
    mkdir -p /watch && \
    chmod +x docs-importer-linux

COPY entrypoint.sh /

RUN chmod +x entrypoint.sh

CMD /entrypoint.sh