/*
*	provide db method
**/

package dbOp

import (
	"encoding/json"
	"fmt"
	"os"
	"regexp"

	"github.com/Go-GraphQL-Group/SW-Crawler/model"
	"github.com/boltdb/bolt"
)

/*
 *	ID 大于 0
 */
const peopleBucket = "People"
const filmsBucket = "Film"
const planetsBucket = "Planet"
const speciesBucket = "Specie"
const starshipsBucket = "Starship"
const vehiclesBucket = "Vehicle"

// 正则替换
const origin = "http://localhost:8080/query/+[a-zA-Z_]+/"

const replace = ""

const preURL = "http://localhost:8080/query/"

func GetPeopleByID(ID string) (error, string) {
	db, err := bolt.Open("github.com/Liu-YT/Crawler/data/data.db", 0600, nil)
	CheckErr(err)
	defer db.Close()

	people := &model.People{}
	dbErr := db.View(func(tx *bolt.Tx) error {
		peoBuck := tx.Bucket([]byte(peopleBucket))
		v := peoBuck.Get([]byte(ID))

		// 正则替换
		re, _ := regexp.Compile(origin)
		rep := re.ReplaceAllString(string(v), replace)
		// 替换后结果
		// fmt.Println("After regexp: " + rep)

		err = json.Unmarshal([]byte(rep), people)
		CheckErr(err)
		// Home
		homeId := people.Homeworld
		homeId = homeId[0 : len(homeId)-1]
		homeBuck := tx.Bucket([]byte(planetsBucket))
		planet := homeBuck.Get([]byte(homeId))
		people.Homeworld = string(planet[:])

		// films
		for i, it := range people.Films {
			it = it[0 : len(it)-1]
			filmBuck := tx.Bucket([]byte(filmsBucket))
			film := filmBuck.Get([]byte(it))
			CheckErr(err)
			people.Films[i] = string(film)
		}

		// species
		for i, it := range people.Species {
			it = it[0 : len(it)-1]
			specBuck := tx.Bucket([]byte(speciesBucket))
			species := specBuck.Get([]byte(it))
			people.Species[i] = string(species)
		}

		// vehicles
		for i, it := range people.Vehicles {
			it = it[0 : len(it)-1]
			vehBuck := tx.Bucket([]byte(vehiclesBucket))
			vehicle := vehBuck.Get([]byte(it))
			people.Vehicles[i] = string(vehicle)
		}

		// starships
		for i, it := range people.Starships {
			it = it[0 : len(it)-1]
			starBuck := tx.Bucket([]byte(starshipsBucket))
			starship := starBuck.Get([]byte(it))
			people.Starships[i] = string(starship)
		}

		people.Url = preURL + "people/" + people.Url
		return nil
	})
	jsons, err := json.Marshal(people)
	CheckErr(err)
	return dbErr, string(jsons)
}

func GetFilmByID(ID string) (error, string) {
	db, err := bolt.Open("./data/data.db", 0600, nil)
	CheckErr(err)
	defer db.Close()

	film := &model.Film{}
	dbErr := db.View(func(tx *bolt.Tx) error {
		filmBuck := tx.Bucket([]byte(filmsBucket))
		v := filmBuck.Get([]byte(ID))

		// 正则替换
		re, _ := regexp.Compile(origin)
		rep := re.ReplaceAllString(string(v), replace)
		// 替换后结果
		// fmt.Println("After regexp: " + rep)

		err = json.Unmarshal([]byte(rep), film)
		CheckErr(err)

		// character
		for i, it := range film.Character {
			it = it[0 : len(it)-1]
			peoBuck := tx.Bucket([]byte(peopleBucket))
			people := peoBuck.Get([]byte(it))
			film.Character[i] = string(people)
		}

		// planet
		for i, it := range film.Planets {
			it = it[0 : len(it)-1]
			plaBuck := tx.Bucket([]byte(planetsBucket))
			planet := plaBuck.Get([]byte(it))
			film.Planets[i] = string(planet)
		}

		// starship
		for i, it := range film.Starships {
			it = it[0 : len(it)-1]
			starBuck := tx.Bucket([]byte(starshipsBucket))
			starship := starBuck.Get([]byte(it))
			film.Starships[i] = string(starship)
		}

		// vehicle
		for i, it := range film.Vehicles {
			it = it[0 : len(it)-1]
			vehBuck := tx.Bucket([]byte(vehiclesBucket))
			vehicle := vehBuck.Get([]byte(it))
			film.Vehicles[i] = string(vehicle)
		}

		// specie
		for i, it := range film.Species {
			it = it[0 : len(it)-1]
			specBuck := tx.Bucket([]byte(speciesBucket))
			specie := specBuck.Get([]byte(it))
			film.Species[i] = string(specie)
		}

		film.Url = preURL + "films/" + film.Url
		return nil
	})
	jsons, err := json.Marshal(film)
	CheckErr(err)
	return dbErr, string(jsons)
}

func GetPlanetByID(ID string) (error, string) {
	db, err := bolt.Open("./data/data.db", 0600, nil)
	CheckErr(err)
	defer db.Close()

	planet := &model.Planet{}
	dbErr := db.View(func(tx *bolt.Tx) error {
		plaBuck := tx.Bucket([]byte(planetsBucket))
		v := plaBuck.Get([]byte(ID))

		// 正则替换
		re, _ := regexp.Compile(origin)
		rep := re.ReplaceAllString(string(v), replace)
		// 替换后结果
		// fmt.Println("After regexp: " + rep)

		err = json.Unmarshal([]byte(rep), planet)
		CheckErr(err)

		// resident
		for i, it := range planet.Residents {
			it = it[0 : len(it)-1]
			peoBuck := tx.Bucket([]byte(peopleBucket))
			people := peoBuck.Get([]byte(it))
			planet.Residents[i] = string(people)
		}

		// film
		for i, it := range planet.Films {
			it = it[0 : len(it)-1]
			filmBuck := tx.Bucket([]byte(filmsBucket))
			film := filmBuck.Get([]byte(it))
			planet.Films[i] = string(film)
		}
		planet.Url = preURL + "planets/" + planet.Url
		return nil
	})
	jsons, err := json.Marshal(planet)
	CheckErr(err)
	return dbErr, string(jsons)
}

func GetSpeciesByID(ID string) (error, string) {
	db, err := bolt.Open("./data/data.db", 0600, nil)
	CheckErr(err)
	defer db.Close()

	specie := &model.Species{}
	db.View(func(tx *bolt.Tx) error {
		specBuck := tx.Bucket([]byte(speciesBucket))
		v := specBuck.Get([]byte(ID))

		// 正则替换
		re, _ := regexp.Compile(origin)
		rep := re.ReplaceAllString(string(v), replace)
		// 替换后结果
		// fmt.Println("After regexp: " + rep)

		err = json.Unmarshal([]byte(rep), specie)
		CheckErr(err)

		// Home
		homeId := specie.Homeworld
		homeId = homeId[0 : len(homeId)-1]
		homeBuck := tx.Bucket([]byte(planetsBucket))
		planet := homeBuck.Get([]byte(homeId))
		specie.Homeworld = string(planet[:])

		// people
		for i, it := range specie.People {
			it = it[0 : len(it)-1]
			peoBuck := tx.Bucket([]byte(peopleBucket))
			people := peoBuck.Get([]byte(it))
			specie.People[i] = string(people)
		}

		// film
		for i, it := range specie.Films {
			it = it[0 : len(it)-1]
			filmBuck := tx.Bucket([]byte(filmsBucket))
			film := filmBuck.Get([]byte(it))
			specie.Films[i] = string(film)
		}
		specie.Url = preURL + "species/" + specie.Url
		return nil
	})
	jsons, err := json.Marshal(specie)
	CheckErr(err)
	return nil, string(jsons)
}

func GetStarshipByID(ID string) (error, string) {
	db, err := bolt.Open("./data/data.db", 0600, nil)
	CheckErr(err)
	defer db.Close()

	starship := &model.Starship{}
	dbErr := db.View(func(tx *bolt.Tx) error {
		starBuck := tx.Bucket([]byte(starshipsBucket))
		v := starBuck.Get([]byte(ID))

		// 正则替换
		re, _ := regexp.Compile(origin)
		rep := re.ReplaceAllString(string(v), replace)
		// 替换后结果
		// fmt.Println("After regexp: " + rep)

		err = json.Unmarshal([]byte(rep), starship)
		CheckErr(err)

		// people
		for i, it := range starship.Pilots {
			it = it[0 : len(it)-1]
			peoBuck := tx.Bucket([]byte(peopleBucket))
			people := peoBuck.Get([]byte(it))
			starship.Pilots[i] = string(people)
		}

		// film
		for i, it := range starship.Films {
			it = it[0 : len(it)-1]
			filmBuck := tx.Bucket([]byte(filmsBucket))
			film := filmBuck.Get([]byte(it))
			starship.Films[i] = string(film)
		}
		starship.Url = preURL + "starships/" + starship.Url
		return nil
	})
	jsons, err := json.Marshal(starship)
	CheckErr(err)
	return dbErr, string(jsons)
}

func GetVehicleByID(ID string) (error, string) {
	db, err := bolt.Open("./data/data.db", 0600, nil)
	CheckErr(err)
	defer db.Close()

	vehicle := &model.Vehicle{}
	dbErr := db.View(func(tx *bolt.Tx) error {
		vehicBuck := tx.Bucket([]byte(vehiclesBucket))
		v := vehicBuck.Get([]byte(ID))

		// 正则替换
		re, _ := regexp.Compile(origin)
		rep := re.ReplaceAllString(string(v), replace)
		// 替换后结果
		// fmt.Println("After regexp: " + rep)

		err = json.Unmarshal([]byte(rep), vehicle)
		CheckErr(err)

		// people
		for i, it := range vehicle.Pilots {
			it = it[0 : len(it)-1]
			peoBuck := tx.Bucket([]byte(peopleBucket))
			people := peoBuck.Get([]byte(it))
			vehicle.Pilots[i] = string(people)
		}

		// film
		for i, it := range vehicle.Films {
			it = it[0 : len(it)-1]
			filmBuck := tx.Bucket([]byte(filmsBucket))
			film := filmBuck.Get([]byte(it))
			vehicle.Films[i] = string(film)
		}
		vehicle.Url = preURL + "vehicles/" + vehicle.Url
		return nil
	})
	jsons, err := json.Marshal(vehicle)
	CheckErr(err)
	return dbErr, string(jsons)
}

// err
func CheckErr(err error) {
	if err != nil {
		fmt.Println("Error occur: ", err)
		os.Exit(1)
	}
}
