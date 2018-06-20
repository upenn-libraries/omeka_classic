#! /bin/sh

cp /run/secrets/*db_ini /var/www/html/db.ini
chmod 640 /var/www/html/db.ini
chown www-data:www-data /var/www/html/db.ini

exec "$@"
