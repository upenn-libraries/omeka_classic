#! /bin/sh

cp /run/secrets/db_ini /var/www/html/db.ini

exec "$@"
