#!/usr/bin/env bash

service mysql start

mysql \
  --user=root \
  --password=root \
  -e "CREATE DATABASE IF NOT EXISTS drupal;"

mysql \
  --user=root \
  --password=root \
  -e "CREATE DATABASE IF NOT EXISTS drupal2;"

docker-php-entrypoint
apache2-foreground