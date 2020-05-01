newUser='demouser'
newDbPassword='demopasswd'
newDb='demodatabase'
#host=localhost
host='%'

create_db="CREATE DATABASE \`${newDb}\`;"
create_user="CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';"
grant_usage_1="GRANT USAGE ON "
grant_usage_2=" TO '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';"
grant_priv="GRANT ALL privileges ON \`${newDb}\`.* TO '${newUser}'@'${host}';"
flush="FLUSH PRIVILEGES;"


echo $create_db | /usr/bin/mysql -u root
echo $create_user | /usr/bin/mysql -u root
echo $grant_usage_1'*.*'$grant_usage_2 | /usr/bin/mysql -u root
echo $grant_priv | /usr/bin/mysql -u root
echo $flush | /usr/bin/mysql -u root


#echo $commands

#CREATE DATABASE `test2`;CREATE USER 'test2'@'%' IDENTIFIED BY 'test2';GRANT USAGE ON *.* TO 'test2'@'%' IDENTIFIED BY 'test2';GRANT ALL privileges ON `test2`.* TO 'test2'@'%';FLUSH PRIVILEGES;
#CREATE DATABASE `demodb2`;CREATE USER 'demodb2'@'%' IDENTIFIED BY 'demodb2';GRANT USAGE ON *.* TO 'demodb2'@'%' IDENTIFIED BY 'demodb2';GRANT ALL privileges ON `demodb2`.* TO 'demodb2'@'%';FLUSH PRIVILEGES;