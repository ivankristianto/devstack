#!/bin/bash
#
# Create individual SQL files for each database. These files
# are imported automatically during an initial provision if
# the databases exist per the import-sql.sh process.
mysql -h localhost -uroot -proot -e 'show databases' | \
grep -v -F "information_schema" | \
grep -v -F "performance_schema" | \
grep -v -F "mysql" | \
grep -v -F "test" | \
grep -v -F "Database" | \
while read dbname; do mysqldump -uroot -proot --databases "$dbname" > /home/vagrant/data/"$dbname".sql && echo "Database $dbname backed up..."; done
