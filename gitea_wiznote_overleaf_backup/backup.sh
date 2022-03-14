cur_date=`date +%Y%m%d`
cd /home/ganghuic/gitea/gitea_backup
mkdir $cur_date
cp ../custom ./$cur_date
cp ../data ./$cur_date
cp ../gitea ./$cur_date
cp ../log ./$cur_date


cd /home/ganghuic/wizdata/wizdata_backup
mkdir $cur_date
cp ../data_root ./$cur_date
cp ../db ./$cur_date
cp ../index ./$cur_date
cp ../log ./$cur_date
cp ../override_files ./$cur_date
cp ../store ./$cur_date
cp ../wiz-abstract ./$cur_date
cp ../wiz-gather-dev ./$cur_date
cp ../wizserver-temp ./$cur_date

cd /home/ganghuic/overleaf/overleaf_backup
mkdir $cur_date
cp ../docker-compose.yml ./$cur_date
cp ../mongo_data ./$cur_date
cp ../redis_data ./$cur_date
cp ../sharelatex_data ./$cur_date


