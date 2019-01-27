#!/usr/bin/env bash

#Generate config file using environmental variables
mkdir -p /root/.config/preferences/
cat >/root/.config/preferences/com.sismics.docs.importer.pref <<EOL
importer:
  daemon: true
  baseUrl: '${SISMICS_BASE_URL}'
  username: ${SISMICS_USERNAME}
  password: ${SISMICS_PASSWORD}
  path: /watch
EOL

cat /root/.config/preferences/com.sismics.docs.importer.pref

/docs-importer-linux -d