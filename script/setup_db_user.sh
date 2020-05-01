newUser='demodb2'
newDbPassword='demodb2'
newDb='demodb2'
#host=localhost
host='%'

create_db="CREATE DATABASE \`${newDb}\`;"
create_user="CREATE USER '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';"
grant_usage_1="GRANT USAGE ON "
grant_usage_2=" TO '${newUser}'@'${host}' IDENTIFIED BY '${newDbPassword}';"
grant_priv="GRANT ALL privileges ON \`${newDb}\`.* TO '${newUser}'@'${host}';"
flush="FLUSH PRIVILEGES;"


echo $create_db$create_user$grant_usage_1'*.*'$grant_usage_2$grant_priv$flush
echo $create_db$create_user$grant_usage_1'*.*'$grant_usage_2$grant_priv$flush | /usr/bin/mysql -u root

#echo $commands

#CREATE DATABASE `test2`;CREATE USER 'test2'@'%' IDENTIFIED BY 'test2';GRANT USAGE ON *.* TO 'test2'@'%' IDENTIFIED BY 'test2';GRANT ALL privileges ON `test2`.* TO 'test2'@'%';FLUSH PRIVILEGES;