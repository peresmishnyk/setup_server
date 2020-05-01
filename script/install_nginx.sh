apt -y install nginx

rm /etc/nginx/sites-enabled/default
cp $SCRIPTPATH/../nginx/default /etc/nginx/sites-enabled/default

service nginx reload