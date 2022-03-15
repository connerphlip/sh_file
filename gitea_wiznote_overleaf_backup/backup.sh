#!/bin/bash
cur_date=`date "+%Y-%m-%d"`
cd /home/ganghuic/gitea/gitea_backup
mkdir $cur_date
cp -afdpr ../custom ./$cur_date
cp -afdpr ../data ./$cur_date
cp -afdpr ../gitea ./$cur_date
cp -afdpr ../log ./$cur_date
cd ./$cur_date
tar -zpc ./custom/ ./data/ ./gitea ./log/ -f ${cur_date}.tar.gz
mv ${cur_date}.tar.gz ../
cd ..
rm -rf ${cur_date}


cd /home/ganghuic/wizdata/wizdata_backup
mkdir $cur_date
cp -afdpr ../data_root ./$cur_date
cp -afdpr ../db ./$cur_date
cp -afdpr ../index ./$cur_date
cp -afdpr ../logs ./$cur_date
cp -afdpr ../override_files ./$cur_date
cp -afdpr ../store ./$cur_date
cp -afdpr ../wiz-abstract ./$cur_date
cp -afdpr ../wiz-gather-dev ./$cur_date
cp -afdpr ../wizserver-temp ./$cur_date
cd ./$cur_date
tar -zpc ./data_root ./db ./index ./logs ./override_files ./store ./wiz-abstract ./wiz-gather-dev ./wizserver-temp -f ${cur_date}.tar.gz
mv ${cur_date}.tar.gz ../
cd ..
rm -rf ${cur_date}


cd /home/ganghuic/overleaf/overleaf_backup
mkdir $cur_date
cp -afdpr ../docker-compose.yml ./$cur_date
cp -afdpr ../mongo_data ./$cur_date
cp -afdpr ../redis_data ./$cur_date
cp -afdpr ../sharelatex_data ./$cur_date
cd ./$cur_date
tar -zpc ./docker-compose.yml ./mongo_data ./redis_data ./sharelatex_data -f ${cur_date}.tar.gz
mv ${cur_date}.tar.gz ../
cd ..
rm -rf ${cur_date}


cd /home/ganghuic/dzzoffice/dzzoffice_backup/dzzoffice
docker cp b55:/var/www/html ./
tar -zpc ./html -f ${cur_date}.tar.gz
rm -rf ./html

cd /home/ganghuic/dzzoffice/dzzoffice_backup/mysql
docker exec -it 5e137b403f52 mysqldump --defaults-extra-file=/etc/mysql/my.cnf dzzoffice > /home/ganghuic/dzzoffice/dzzoffice_backup/mysql/${cur_date}.sql
