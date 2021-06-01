FROM drupal:9

# Install drush to simplify creating sites.
RUN composer require drush/drush "^8.0.0"

# Add a default MySQL client. This will use something about the system
# configuration to figure out which client is appropriate. For this container,
# it turns out that it's MariaDB. :shrug:
RUN apt-get update && \
  apt-get install -y default-mysql-client && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

# Docker's default user is root. When you run drush, it creates some files and
# directories. In order for the web server to be able to read those files, add
# root to the same user group as the server. That way, when drush creates files
# and directories, they will be owned by and accessible to the group.
RUN usermod -g www-data root

ADD init.sh /init.sh
ENTRYPOINT ["/init.sh"];
