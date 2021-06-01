# OPRE KITS Drupal playground

A playground for helping us learn about Drupal, how to configure it, how it gets
deployed, updated, etc. And also multisite configuration. And other stuff.

## Running it

Just run `docker compose up`. That will create a MariaDB instance, a Drupal
instance, and create a Drupal site that uses the MariaDB instance. The admin
password will show up in the Docker console output – it's randomly generated
the first time the Drupal container starts up.

### Why MariaDB?

Starting with MySQL 8.0, it defaults to a SHA2-based authentication. MariaDB is
an indepedently-maintained fork of MySQL that is meant to be entirely
interoperable, but it does not yet support SHA2 authentication. Drupal ships
with MariaDB bindings, so rather than figure out how to get Drupal to use real
MySQL or how to disable the SHA2 authentication, I just switched wholesale to
MariaDB.

## Contributing

Please read the [contribution guidelines](CONTRIBUTING.md) before submitting a
pull request.

## Public domain

This project is in the worldwide [public domain](LICENSE.md). As stated in [CONTRIBUTING](CONTRIBUTING.md):

> This project is in the public domain within the United States, and copyright and related
> rights in the work worldwide are waived through the
> [CC0 1.0 Universal public domain dedication](https://creativecommons.org/publicdomain/zero/1.0/).
>
> All contributions to this project will be released under the CC0 dedication. By submitting a pull
> request, you are agreeing to comply with this waiver of copyright interest.
