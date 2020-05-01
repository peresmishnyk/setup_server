newUser='test4'
newDbPassword='test4'
newDb='test4'
#host=localhost
host='%'

commands='CREATE DATABASE '${newDb}';CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT USAGE ON *.* TO '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';GRANT ALL privileges ON '${newDb}'.*
TO '${newUser}'@'${host}';FLUSH PRIVILEGES;'

echo $commands
echo ${commands} | /usr/bin/mysql -u root

#echo $commands

#CREATE DATABASE `test2`;CREATE USER 'test2'@'%' IDENTIFIED BY 'test2';GRANT USAGE ON *.* TO 'test2'@'%' IDENTIFIED BY 'test2';GRANT ALL privileges ON `test2`.* TO 'test2'@'%';FLUSH PRIVILEGES;