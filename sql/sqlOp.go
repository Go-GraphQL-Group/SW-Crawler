package sql

import (
	"database/sql"
	"fmt"
	"strings"

	"github.com/Go-GraphQL-Group/SW-Crawler/model"
	_ "github.com/go-sql-driver/mysql"
)

//数据库配置
const (
	userName = "root"
	password = "2craWbasil"
	ip       = "127.0.0.1"
	port     = "3306"
	dbName   = "data"
)

// 正则替换
const origin = "http://localhost:8080/query/+[a-zA-Z_]+/"

const replace = ""

//Db数据库连接池
var DB *sql.DB

func InitDB() {
	//构建连接："用户名:密码@tcp(IP:端口)/数据库?charset=utf8"
	path := strings.Join([]string{userName, ":", password, "@tcp(", ip, ":", port, ")/", dbName, "?charset=utf8"}, "")

	//打开数据库,前者是驱动名，所以要导入： _ "github.com/go-sql-driver/mysql"
	DB, _ = sql.Open("mysql", path)
	//设置数据库最大连接数
	DB.SetConnMaxLifetime(100)
	//设置上数据库最大闲置连接数
	DB.SetMaxIdleConns(10)
	//验证连接
	if err := DB.Ping(); err != nil {
		fmt.Println("opon database fail")
		return
	}
	fmt.Println("connnect success")
}

func InsertPeople(people *model.People) bool {
	//开启事务
	tx, err := DB.Begin()
	// defer DB.Close()

	if err != nil {
		fmt.Println("tx fail")
		return false
	}

	films := ""
	for _, it := range people.Films {
		films += it[0:len(it)-1] + "&"
	}

	species := ""
	for _, it := range people.Species {
		species += it[0:len(it)-1] + "&"
	}

	vehicles := ""
	for _, it := range people.Vehicles {
		vehicles += it[0:len(it)-1] + "&"
	}

	starships := ""
	for _, it := range people.Starships {
		starships += it[0:len(it)-1] + "&"
	}

	//准备sql语句
	stmt, err := tx.Prepare("INSERT INTO people (`ID`, `Name`, `Heigth`, `Mass`, `Hair_color`, `Skin_color`, `Eye_color`, `Birth_year`, `Gender`, `Homeworld`, `Films`, `Species`, `Vehicles`, `Starships`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		fmt.Println("Prepare fail")
		return false
	}

	//将参数传递到sql语句中并且执行
	res, err := stmt.Exec(people.ID, people.Name, people.Heigth, people.Mass, people.Hair_color, people.Skin_color, people.Eye_color, people.Birth_year, people.Gender, people.Homeworld[0:len(people.Homeworld)-1], films, species, vehicles, starships)
	if err != nil {
		fmt.Println("Exec fail")
		return false
	}
	//将事务提交
	tx.Commit()
	//获得上一个插入自增的id
	fmt.Println(res.LastInsertId())
	return true
}

func InsertFilm(film *model.Film) bool {
	//开启事务
	tx, err := DB.Begin()
	// defer DB.Close()

	if err != nil {
		fmt.Println("tx fail")
		return false
	}

	actor := ""
	for _, it := range film.Character {
		actor += it[0:len(it)-1] + "&"
	}

	species := ""
	for _, it := range film.Species {
		species += it[0:len(it)-1] + "&"
	}

	vehicles := ""
	for _, it := range film.Vehicles {
		vehicles += it[0:len(it)-1] + "&"
	}

	starships := ""
	for _, it := range film.Starships {
		starships += it[0:len(it)-1] + "&"
	}

	planets := ""
	for _, it := range film.Planets {
		planets += it[0:len(it)-1] + "&"
	}

	//准备sql语句
	stmt, err := tx.Prepare("INSERT INTO film (`ID`, `Title`, `Episode_id`, `Opening_crawl`, `Director`, `Producer`, `Release_data`, `Actor`, `Planets`, `Starships`, `Vehicles`, `Species`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		fmt.Println("Prepare fail")
		fmt.Println(err)
		return false
	}

	//将参数传递到sql语句中并且执行
	res, err := stmt.Exec(film.ID, film.Title, film.Episode_id, film.Opening_crawl, film.Director, film.Producer, film.Release_data, actor, planets, starships, vehicles, species)
	if err != nil {
		fmt.Println("Exec fail")
		fmt.Println(err)
		return false
	}
	//将事务提交
	tx.Commit()
	//获得上一个插入自增的id
	fmt.Println(res.LastInsertId())
	return true
}

func InsertPlanet(planet *model.Planet) bool {
	//开启事务
	tx, err := DB.Begin()
	// defer DB.Close()

	if err != nil {
		fmt.Println("tx fail")
		return false
	}

	residents := ""
	for _, it := range planet.Residents {
		residents += it[0:len(it)-1] + "&"
	}

	films := ""
	for _, it := range planet.Films {
		films += it[0:len(it)-1] + "&"
	}

	//准备sql语句
	stmt, err := tx.Prepare("INSERT INTO planet (`ID`, `Name`, `Rotation_period`, `Orbital_period`, `Diameter`, `Climate`, `Gravity`, `Terrain`, `Surface_water`, `Population`, `Residents`, `Films`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		fmt.Println("Prepare fail")
		fmt.Println(err)
		return false
	}

	//将参数传递到sql语句中并且执行
	res, err := stmt.Exec(planet.ID, planet.Name, planet.Rotation_period, planet.Orbital_period, planet.Diameter, planet.Climate, planet.Gravity, planet.Terrain, planet.Surface_water, planet.Population, residents, films)
	if err != nil {
		fmt.Println("Exec fail")
		fmt.Println(err)
		return false
	}
	//将事务提交
	tx.Commit()
	//获得上一个插入自增的id
	fmt.Println(res.LastInsertId())
	return true
}

func InsertSpecie(specie *model.Species) bool {
	//开启事务
	tx, err := DB.Begin()
	// defer DB.Close()

	if err != nil {
		fmt.Println("tx fail")
		return false
	}

	people := ""
	for _, it := range specie.People {
		people += it[0:len(it)-1] + "&"
	}

	films := ""
	for _, it := range specie.Films {
		films += it[0:len(it)-1] + "&"
	}
	home := ""
	if specie.Homeworld != "" {
		home = specie.Homeworld[0 : len(specie.Homeworld)-1]
	}
	//准备sql语句
	stmt, err := tx.Prepare("INSERT INTO specie (`ID`, `Name`, `Classification`, `Designation`, `Average_height`, `Skin_colors`, `Eye_colors`, `Average_lifespan`, `Homeworld`, `Language`, `People`, `Films`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		fmt.Println("Prepare fail")
		fmt.Println(err)
		return false
	}

	//将参数传递到sql语句中并且执行
	res, err := stmt.Exec(specie.ID, specie.Name, specie.Classification, specie.Designation, specie.Average_height, specie.Skin_colors, specie.Eye_colors, specie.Average_lifespan, home, specie.Language, people, films)
	if err != nil {
		fmt.Println("Exec fail")
		fmt.Println(err)
		return false
	}
	//将事务提交
	tx.Commit()
	//获得上一个插入自增的id
	fmt.Println(res.LastInsertId())
	return true
}

func InsertStarship(starship *model.Starship) bool {
	//开启事务
	tx, err := DB.Begin()
	// defer DB.Close()

	if err != nil {
		fmt.Println("tx fail")
		return false
	}

	pilots := ""
	for _, it := range starship.Pilots {
		pilots += it[0:len(it)-1] + "&"
	}

	films := ""
	for _, it := range starship.Films {
		films += it[0:len(it)-1] + "&"
	}
	//准备sql语句
	stmt, err := tx.Prepare("INSERT INTO starship (`ID`, `Name`, `Model`, `Manufacturer`, `Cost_in_credits`, `Length`, `Max_atmosphering_speed`, `Crew`, `Passenger`, `Cargo_capacity`, `Consumables`, `Hyperdrive_rating`, `MGLT`, `Starship_class`, `Pilots`, `Films`) VALUES (?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		fmt.Println("Prepare fail")
		fmt.Println(err)
		return false
	}

	//将参数传递到sql语句中并且执行
	res, err := stmt.Exec(starship.ID, starship.Name, starship.Model, starship.Manufacturer, starship.Cost_in_credits, starship.Length, starship.Max_atmosphering_speed, starship.Crew, starship.Passenger, starship.Cargo_capacity, starship.Consumables, starship.Hyperdrive_rating, starship.MGLT, starship.Starship_class, pilots, films)
	if err != nil {
		fmt.Println("Exec fail")
		fmt.Println(err)
		return false
	}
	//将事务提交
	tx.Commit()
	//获得上一个插入自增的id
	fmt.Println(res.LastInsertId())
	return true
}

func InsertVehicle(vehicle *model.Vehicle) bool {
	//开启事务
	tx, err := DB.Begin()
	// defer DB.Close()

	if err != nil {
		fmt.Println("tx fail")
		return false
	}

	pilots := ""
	for _, it := range vehicle.Pilots {
		pilots += it[0:len(it)-1] + "&"
	}

	films := ""
	for _, it := range vehicle.Films {
		films += it[0:len(it)-1] + "&"
	}
	//准备sql语句
	stmt, err := tx.Prepare("INSERT INTO vehicle (`ID`, `Name`, `Model`, `Manufacturer`, `Cost_in_credits`, `Length`, `Max_atmosphering_speed`, `Crew`, `Passenger`, `Cargo_capacity`, `Consumables`, `Vehicle_class`, `Pilots`, `Films`) VALUES (?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		fmt.Println("Prepare fail")
		fmt.Println(err)
		return false
	}

	//将参数传递到sql语句中并且执行
	res, err := stmt.Exec(vehicle.ID, vehicle.Name, vehicle.Model, vehicle.Manufacturer, vehicle.Cost_in_credits, vehicle.Length, vehicle.Max_atmosphering_speed, vehicle.Crew, vehicle.Passenger, vehicle.Cargo_capacity, vehicle.Consumables, vehicle.Vehicle_class, pilots, films)
	if err != nil {
		fmt.Println("Exec fail")
		fmt.Println(err)
		return false
	}
	//将事务提交
	tx.Commit()
	//获得上一个插入自增的id
	fmt.Println(res.LastInsertId())
	return true
}
