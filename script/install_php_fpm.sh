apt install software-properties-common
add-apt-repository ppa:ondrej/php
apt -y update
PHP="php7.3"
apt -y install zip openssl $PHP-fpm $PHP-common $PHP-curl $PHP-json $PHP-mbstring $PHP-mysql $PHP-xml $PHP-zip