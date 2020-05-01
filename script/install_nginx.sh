apt -y install nginx

rm /etc/nginx/sites-enabled/default
rm -R /var/www/html

chown -R developer:www-data /var/www
chmod g+s /var/www

cp $SCRIPTPATH/../nginx/default /etc/nginx/sites-enabled/default

mkdir -p /var/www/default
cp $SCRIPTPATH/../nginx/index.php /var/www/default/index.php

service nginx reload