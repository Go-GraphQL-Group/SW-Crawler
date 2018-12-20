package main

import (
	"database/sql"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"
	"regexp"
	"strings"

	"github.com/Go-GraphQL-Group/SW-Crawler/model"
	mySql "github.com/Go-GraphQL-Group/SW-Crawler/sql"
	"github.com/boltdb/bolt"
	_ "github.com/go-sql-driver/mysql"
)

const peopleBucket = "People"
const filmsBucket = "Film"
const planetsBucket = "Planet"
const speciesBucket = "Specie"
const starshipsBucket = "Starship"
const vehiclesBucket = "Vehicle"

const (
	userName = "root"
	password = ""
	ip       = "127.0.0.1"
	port     = "3306"
	dbName   = "data"
)

const origin = "https://swapi.co/api/"

const origin2 = "http://localhost:8080/query/+[a-zA-Z_]+/"

const replace = "http://localhost:8080/query/"

const NoneRe = ""

// "people": "https://swapi.co/api/people/?format=json"
// "planets": "https://swapi.co/api/planets/?format=json"
// "films": "https://swapi.co/api/films/?format=json"
// "species": "https://swapi.co/api/species/?format=json"
// "vehicles": "https://swapi.co/api/vehicles/?format=json"
// "starships": "https://swapi.co/api/starships/?format=json"

// get people
func peopleGet(url string) (string, *model.PeopleRes) {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.PeopleRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)
	next := page.Next

	// 正则替换
	re, _ := regexp.Compile(origin)
	rep := re.ReplaceAllString(string(body), replace)

	err = json.Unmarshal([]byte(rep), page)
	CheckErr(err)
	return next, page
}

func getAllPeople() []model.People {
	var allPeople []model.People
	next, res := peopleGet(string("https://swapi.co/api/people/?format=json"))
	for _, it := range res.Result {
		allPeople = append(allPeople, it)
	}
	for next != "" {
		next, res = peopleGet(next)
		for _, it := range res.Result {
			allPeople = append(allPeople, it)
		}
	}
	return allPeople
}

// get planets
func planetsGet(url string) (string, *model.PlanetsRes) {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.PlanetsRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)
	next := page.Next

	// 正则替换
	re, _ := regexp.Compile(origin)
	rep := re.ReplaceAllString(string(body), replace)

	err = json.Unmarshal([]byte(rep), page)
	CheckErr(err)
	return next, page
}

func getAllPlanets() []model.Planet {
	var allPlanets []model.Planet
	next, res := planetsGet(string("https://swapi.co/api/planets/?format=json"))
	for _, it := range res.Result {
		allPlanets = append(allPlanets, it)
	}
	for next != "" {
		next, res = planetsGet(next)
		for _, it := range res.Result {
			allPlanets = append(allPlanets, it)
		}
	}
	return allPlanets
}

// get films
func filmsGet(url string) (string, *model.FilmsRes) {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.FilmsRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)
	next := page.Next

	// 正则替换
	re, _ := regexp.Compile(origin)
	rep := re.ReplaceAllString(string(body), replace)

	err = json.Unmarshal([]byte(rep), page)
	CheckErr(err)
	return next, page
}

func getAllFilms() []model.Film {
	var allFilms []model.Film
	next, res := filmsGet(string("https://swapi.co/api/films/?format=json"))
	for _, it := range res.Result {
		allFilms = append(allFilms, it)
	}
	for res.Next != "" {
		next, res = filmsGet(next)
		for _, it := range res.Result {
			allFilms = append(allFilms, it)
		}
	}
	return allFilms
}

// get species
func speciesGet(url string) (string, *model.SpeciesRes) {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.SpeciesRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	next := page.Next

	// 正则替换
	re, _ := regexp.Compile(origin)
	rep := re.ReplaceAllString(string(body), replace)

	err = json.Unmarshal([]byte(rep), page)
	CheckErr(err)
	return next, page
}

func getAllSpecies() []model.Species {
	var allSpecies []model.Species
	next, res := speciesGet(string("https://swapi.co/api/species/?format=json"))
	for _, it := range res.Result {
		allSpecies = append(allSpecies, it)
	}
	for next != "" {
		next, res = speciesGet(next)
		for _, it := range res.Result {
			allSpecies = append(allSpecies, it)
		}
	}
	return allSpecies
}

// get vehicles
func vehiclesGet(url string) (string, *model.VehiclesRes) {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.VehiclesRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	next := page.Next

	// 正则替换
	re, _ := regexp.Compile(origin)
	rep := re.ReplaceAllString(string(body), replace)

	err = json.Unmarshal([]byte(rep), page)
	CheckErr(err)
	return next, page
}

func getAllVehicles() []model.Vehicle {
	var allVehicles []model.Vehicle
	next, res := vehiclesGet(string("https://swapi.co/api/vehicles/?format=json"))
	for _, it := range res.Result {
		allVehicles = append(allVehicles, it)
	}
	for next != "" {
		next, res = vehiclesGet(next)
		for _, it := range res.Result {
			allVehicles = append(allVehicles, it)
		}
	}
	return allVehicles
}

// get starships
func starshipsGet(url string) (string, *model.StarshipsRes) {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.StarshipsRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)
	next := page.Next

	// 正则替换
	re, _ := regexp.Compile(origin)
	rep := re.ReplaceAllString(string(body), replace)

	err = json.Unmarshal([]byte(rep), page)
	CheckErr(err)
	return next, page
}

func getAllStarships() []model.Starship {
	var allStarship []model.Starship
	next, res := starshipsGet(string("https://swapi.co/api/starships/?format=json"))
	for _, it := range res.Result {
		allStarship = append(allStarship, it)
	}
	for next != "" {
		next, res = starshipsGet(next)
		for _, it := range res.Result {
			allStarship = append(allStarship, it)
		}
	}
	return allStarship
}

// err
func CheckErr(err error) {
	if err != nil {
		fmt.Println("Error occur: ", err)
		os.Exit(1)
	}
}

// 存储信息
func storeData() {
	db, err := bolt.Open("./data/data.db", 0600, nil)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	// fmt.Println(len(starships))
	// for _, it := range starships {
	// 	fmt.Println(it)
	// }

	// create bucket
	db.Update(func(tx *bolt.Tx) error {
		_, err := tx.CreateBucketIfNotExists([]byte(peopleBucket))
		CheckErr(err)
		_, err = tx.CreateBucketIfNotExists([]byte(planetsBucket))
		CheckErr(err)
		_, err = tx.CreateBucketIfNotExists([]byte(filmsBucket))
		CheckErr(err)
		_, err = tx.CreateBucketIfNotExists([]byte(speciesBucket))
		CheckErr(err)
		_, err = tx.CreateBucketIfNotExists([]byte(vehiclesBucket))
		CheckErr(err)
		_, err = tx.CreateBucketIfNotExists([]byte(starshipsBucket))
		CheckErr(err)
		return nil
	})

	// store people data
	fmt.Println("people")
	people := getAllPeople()
	for _, it := range people {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(peopleBucket))
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(it.Url, "")
			it.ID = string(rep)[0 : len(string(rep))-1]
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(it.ID), jsons)
			return err
		})

		db.View(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(peopleBucket))
			v := b.Get([]byte(it.ID))
			fmt.Printf("%s\n", v)
			return nil
		})
	}

	// store planets data
	fmt.Println("planets")
	planests := getAllPlanets()
	for _, it := range planests {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(planetsBucket))
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(it.Url, "")
			it.ID = string(rep)[0 : len(string(rep))-1]
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(it.ID), jsons)
			return err
		})

		db.View(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(planetsBucket))
			v := b.Get([]byte(it.ID))
			fmt.Printf("%s\n", v)
			return nil
		})
	}

	// store films data
	fmt.Println("films")
	films := getAllFilms()
	for _, it := range films {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(filmsBucket))
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(it.Url, "")
			it.ID = string(rep)[0 : len(string(rep))-1]
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(it.ID), jsons)
			return err
		})

		db.View(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(filmsBucket))
			v := b.Get([]byte(it.ID))
			fmt.Printf("%s\n", v)
			return nil
		})
	}

	// store species data
	fmt.Println("species")
	species := getAllSpecies()
	for _, it := range species {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(speciesBucket))
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(it.Url, "")
			it.ID = string(rep)[0 : len(string(rep))-1]
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(it.ID), jsons)
			return err
		})

		db.View(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(speciesBucket))
			v := b.Get([]byte(it.ID))
			fmt.Printf("%s\n", v)
			return nil
		})
	}

	// store vehicles data
	fmt.Println("vehicles")
	vehicles := getAllVehicles()
	for _, it := range vehicles {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(vehiclesBucket))
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(it.Url, "")
			it.ID = string(rep)[0 : len(string(rep))-1]
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(it.ID), jsons)
			return err
		})

		db.View(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(vehiclesBucket))
			v := b.Get([]byte(it.ID))
			fmt.Printf("%s\n", v)
			return nil
		})
	}

	// store starships data
	fmt.Println("starships")
	starships := getAllStarships()
	for _, it := range starships {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(starshipsBucket))
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(it.Url, "")
			it.ID = string(rep)[0 : len(string(rep))-1]
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(it.ID), jsons)
			return err
		})

		db.View(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(starshipsBucket))
			v := b.Get([]byte(it.ID))
			fmt.Printf("%s\n", v)
			return nil
		})
	}
}

//Db数据库连接池
var DB *sql.DB

func main() {
	// storeData()

	/* test get people */
	// people := dbOp.GetPeopleByID("1")
	// fmt.Println(people)

	/* test get film */
	// film := dbOp.GetFilmByID("1")
	// fmt.Println(film)

	/* test get planet */
	// planet := dbOp.GetPlanetByID("1")
	// fmt.Println(planet)

	/* test get specie */
	// specie := dbOp.GetSpeciesByID("1")
	// fmt.Println(specie)

	/* test get starship */
	// starship := dbOp.GetStarshipByID("10")
	// fmt.Println(starship)

	/* test get vehicle */
	// _, vehicle := dbOp.GetVehicleByID("14")
	// fmt.Println(vehicle)

	db, err := bolt.Open("./data/bolt/data.db", 0600, nil)
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	//构建连接："用户名:密码@tcp(IP:端口)/数据库?charset=utf8"
	path := strings.Join([]string{userName, ":", password, "@tcp(", ip, ":", port, ")/", dbName, "?charset=utf8"}, "")

	//打开数据库,前者是驱动名，所以要导入： _ "github.com/go-sql-driver/mysql"
	DB, err := sql.Open("mysql", path)
	fmt.Println(err)
	defer DB.Close()
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

	/* insert */
	// db.View(func(tx *bolt.Tx) error {
	// 	b := tx.Bucket([]byte(peopleBucket))
	// 	b.ForEach(func(k, v []byte) error {
	// 		// 正则替换
	// 		re, _ := regexp.Compile(origin2)
	// 		rep := re.ReplaceAllString(string(v), NoneRe)

	// 		people := &model.People{}
	// 		err = json.Unmarshal([]byte(rep), people)
	// 		mySql.InsertPeople(DB, people)
	// 		return nil
	// 	})
	// 	return nil
	// })
	// db.View(func(tx *bolt.Tx) error {
	// 	b := tx.Bucket([]byte(filmsBucket))
	// 	b.ForEach(func(k, v []byte) error {
	// 		// 正则替换
	// 		re, _ := regexp.Compile(origin2)
	// 		rep := re.ReplaceAllString(string(v), NoneRe)

	// 		film := &model.Film{}
	// 		err = json.Unmarshal([]byte(rep), film)
	// 		mySql.InsertFilm(DB, film)
	// 		return nil
	// 	})
	// 	return nil
	// })

	// db.View(func(tx *bolt.Tx) error {
	// 	b := tx.Bucket([]byte(planetsBucket))
	// 	b.ForEach(func(k, v []byte) error {
	// 		// 正则替换
	// 		re, _ := regexp.Compile(origin2)
	// 		rep := re.ReplaceAllString(string(v), NoneRe)

	// 		planet := &model.Planet{}
	// 		err = json.Unmarshal([]byte(rep), planet)
	// 		mySql.InsertPlanet(DB, planet)
	// 		return nil
	// 	})
	// 	return nil
	// })
	// db.View(func(tx *bolt.Tx) error {
	// 	b := tx.Bucket([]byte(speciesBucket))
	// 	b.ForEach(func(k, v []byte) error {
	// 		// 正则替换
	// 		re, _ := regexp.Compile(origin2)
	// 		rep := re.ReplaceAllString(string(v), NoneRe)

	// 		specie := &model.Species{}
	// 		err = json.Unmarshal([]byte(rep), specie)
	// 		mySql.InsertSpecie(DB, specie)
	// 		return nil
	// 	})
	// 	return nil
	// })
	// db.View(func(tx *bolt.Tx) error {
	// 	b := tx.Bucket([]byte(starshipsBucket))
	// 	b.ForEach(func(k, v []byte) error {
	// 		// 正则替换
	// 		re, _ := regexp.Compile(origin2)
	// 		rep := re.ReplaceAllString(string(v), NoneRe)

	// 		starship := &model.Starship{}
	// 		err = json.Unmarshal([]byte(rep), starship)
	// 		mySql.InsertStarship(DB, starship)
	// 		return nil
	// 	})
	// 	return nil
	// })
	db.View(func(tx *bolt.Tx) error {
		b := tx.Bucket([]byte(vehiclesBucket))
		b.ForEach(func(k, v []byte) error {
			// 正则替换
			re, _ := regexp.Compile(origin2)
			rep := re.ReplaceAllString(string(v), NoneRe)

			vehicle := &model.Vehicle{}
			err = json.Unmarshal([]byte(rep), vehicle)
			mySql.InsertVehicle(DB, vehicle)
			return nil
		})
		return nil
	})
}
