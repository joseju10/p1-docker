#! /bin/sh

sleep 10

mysql -u $BOOKMEDIK_DB_USER --password=$BOOKMEDIK_DB_PASSWORD -h $BOOKMEDIK_DB_HOST $BOOKMEDIK_DB_NAME < /var/www/html/schema.sql

/usr/sbin/apache2ctl -D FOREGROUND
