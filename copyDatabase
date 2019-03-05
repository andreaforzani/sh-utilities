#!/bin/bash
db_source=$1
db_destination=$2
user=root
pass=root
echo "Create '$db_destination' and generating it from '$db_source' dump"
# mysql -u$user -p$pass -e "drop database $db_destination;" --force && mysql -u$user -p$pass -e "create database $db_destination;"  && mysqldump --force -u$user -p$pass -v $db_source | mysql -u$user -p$pass -v $db_destination
mysql -u$user -p$pass -e "create database $db_destination;"  && mysqldump --force -u$user -p$pass -v $db_source | mysql -u$user -p$pass -v $db_destination