apt -y install gnupg2
wget https://repo.percona.com/apt/percona-release_latest.$(lsb_release -sc)_all.deb
dpkg -i percona-release_latest.$(lsb_release -sc)_all.deb
percona-release setup ps80
apt -y update
DEBIAN_FRONTEND=noninteractive apt-get -y install percona-server-server

# fix password
echo "[mysqld]\ndefault-authentication-plugin=mysql_native_password" > /etc/my.cnf
service mysql restart