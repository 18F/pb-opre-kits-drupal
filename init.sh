#!/usr/bin/env bash

if [ ! -e "/tmp/__INITIALIZED" ]; then
  touch /tmp/__INITIALIZED
  yes | drush qd --db-url="$DATABASE_URL" --no-server
fi

docker-php-entrypoint
apache2-foreground