#! /bin/bash
 
TIMESTAMP=$(date +"%F")
BACKUP_DIR="/Users/andrea.forzani/Desktop/TechResources/backup-local-dbs/$TIMESTAMP"
MYSQL_USER="root"
MYSQL=mysql
MYSQL_PASSWORD="root"
MYSQLDUMP=mysqldump
 
mkdir -p "$BACKUP_DIR"
 
databases=`mysql --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)"`
 
for db in $databases; do
mysqldump --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/$db.gz"
done
