cur_date=`date +%Y%m%d`
cd /home/ganghuic/gitea/gitea_backup
mkdir $cur_date
cp -afdpr ../custom ./$cur_date
cp -afdpr ../data ./$cur_date
cp -afdpr ../gitea ./$cur_date
cp -afdpr ../log ./$cur_date


cd /home/ganghuic/wizdata/wizdata_backup
mkdir $cur_date
cp -afdpr ../data_root ./$cur_date
cp -afdpr ../db ./$cur_date
cp -afdpr ../index ./$cur_date
cp -afdpr ../log ./$cur_date
cp -afdpr ../override_files ./$cur_date
cp -afdpr ../store ./$cur_date
cp -afdpr ../wiz-abstract ./$cur_date
cp -afdpr ../wiz-gather-dev ./$cur_date
cp -afdpr ../wizserver-temp ./$cur_date

cd /home/ganghuic/overleaf/overleaf_backup
mkdir $cur_date
cp -afdpr ../docker-compose.yml ./$cur_date
cp -afdpr ../mongo_data ./$cur_date
cp -afdpr ../redis_data ./$cur_date
cp -afdpr ../sharelatex_data ./$cur_date


