#!/bin/bash

deleteday=`date -d '-7 day' +%Y-%m-%d`
# cur_date=`date +%Y%m%d`
cd /home/ganghuic/gitea/gitea_backup
rm -rf *${deleteday}*

# file_list=`ls`
# weeks=7
# amoneth=45
# endDate=${cur_date}
# for i in $file_list
#     do


#             startDate=${i}
            
#             dayDiff=`$((($(date +%s -d  $endDate ) - $(date +%s -d $startDate ))/86400))`
#             if [ $dayDiff -gt  $weeks ]
#                 then
#                     if [ $dayDiff -lt  $amoneth ]
#                         then
#                             if [ ${i:6:2} != 01 ] && [ ${i:6:2} != 09 ] && [ ${i:6:2} != 1 $weeks ] && [ ${i:6:2} != 25 ]
#                                 then
#                                     rm -rf  $i 
#                             fi
#                     else
#                         rm -rf  $i  
#                     fi
#             fi
     
#     done



cd /home/ganghuic/wizdata/wizdata_backup
rm -rf *${deleteday}*


cd /home/ganghuic/overleaf/overleaf_backup
rm -rf *${deleteday}*


