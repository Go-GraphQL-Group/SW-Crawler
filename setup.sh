#!/bin/bash
set -e

#查看mysql服务的状态，方便调试，这条语句可以删除
echo `service mysql status`

echo '1.启动mysql....'
#启动mysql
service mysql start
sleep 3
echo `service mysql status`

echo '2.开始导入数据....'
#导入数据
mysql < /mysql/init.sql
# mysql < /mysql/data_schema.sql
# mysql < /mysql/data_film.sql 
# mysql < /mysql/data_people.sql 
# mysql < /mysql/data_planet.sql 
# mysql < /mysql/data_species.sql 
# mysql < mysql/data_starship.sql 
# mysql < /mysql/data_vehicle.sql 
echo '3.导入数据完毕....'

sleep 3
echo `service mysql status`

#重新设置mysql密码
echo '4.开始修改密码....'
mysql < /mysql/priviledges.sql
echo '5.修改密码完毕....'

#sleep 3
echo `service mysql status`
echo 'mysql容器启动完毕,且数据导入成功'

tail -f /dev/null