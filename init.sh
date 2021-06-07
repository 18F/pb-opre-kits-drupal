#!/usr/bin/env bash

if [ ! -e "/tmp/__INITIALIZED" ]; then
  touch /tmp/__INITIALIZED
  yes | drush qd --db-url="$DATABASE_URL" --no-server
fi

# Give the drupal user permission to do whatever it wants to.
mysql \
  --user=root \
  --password=root \
  --host=db \
  -e "GRANT ALL PRIVILEGES ON *.* TO 'drupal'@'*' IDENTIFIED BY 'drupal';"

# Create a database for the website1 multisite. This is here as an example, for
# when we're ready to start adding multi-sites.
#mysql \
#  --user=drupal \
#  --password=drupal \
#  --host=db \
#  -e "CREATE DATABASE website1_database_name;"

docker-php-entrypoint
apache2-foreground