#!/usr/bin/env bash

# create mediadepot user
useradd -d /home/mediadepot -u ${PUID:-15000} mediadepot


#Generate config file using environmental variables
mkdir -p /home/mediadepot/.config/preferences/
cat >/home/mediadepot/.config/preferences/com.sismics.docs.importer.pref <<EOL
importer:
  daemon: true
  baseUrl: '${SISMICS_BASE_URL}'
  username: ${SISMICS_USERNAME}
  password: ${SISMICS_PASSWORD}
  path: /watch
EOL

chown -R mediadepot:mediadepot /home/mediadepot/.config
chown -R mediadepot:mediadepot /watch

su -c "docs-importer-linux -d" mediadepot
