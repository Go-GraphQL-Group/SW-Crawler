### 介绍
* 爬取`https://swapi.co/`页面的所有数据
  * `people`
  * `films`
  * `species`
  * `films`
  * `planets`
  * `starships`
* `data/data.db`    为生成的相应的`BoltDB`数据库
  * `show/db.txt`     数据库存储的内容显示
* `dbOp/dbOp.go`    提供一系列数据库获取数据封装好的的方法
  * 返回样例展示
    * `show/people.json` 
    * `show/film.json`     
    * `show/planet.json`    
    * `show/specie.json`    
    * `show/starship.json` 
    * `show/vehicle.json`   
