use mysql;
select host, user from user;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
create user starwars identified by 'starwars';
-- 将starwars数据库的权限授权给创建的starwars用户，密码为starwars：
grant all on starwars.* to starwars@'%' identified by 'starwars' with grant option;
-- 这一条命令一定要有：
flush privileges;