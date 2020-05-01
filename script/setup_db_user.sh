newUser='test33'
newDbPassword='test33'
newDb='test33'
#host=localhost
host='%'

create_db="CREATE DATABASE \`${newDb}\`;"
create_user="CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';"
grant_usage='GRANT USAGE ON *.* TO \'${newUser}\'@\'${host}\' IDENTIFIED BY \'${newDbPassword}\';'
grant_priv="GRANT ALL privileges ON \`${newDb}\`.*TO '${newUser}'@'${host}';"
flush="FLUSH PRIVILEGES;"

#commands="CREATE DATABASE \`${newDb}\`;CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT USAGE ON *.* TO '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT ALL privileges ON \`${newDb}\`.* TO '${newUser}'@'${host}';FLUSH PRIVILEGES;"

echo $create_db$create_user$grant_usage$grant_priv$flush
echo $create_db$create_user$grant_usage$grant_priv$flush | /usr/bin/mysql -u root

#echo $commands

#CREATE DATABASE `test2`;CREATE USER 'test2'@'%' IDENTIFIED BY 'test2';GRANT USAGE ON *.* TO 'test2'@'%' IDENTIFIED BY 'test2';GRANT ALL privileges ON `test2`.* TO 'test2'@'%';FLUSH PRIVILEGES;