package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"github.com/Liu-YT/crawler/model"
	"github.com/boltdb/bolt"
)

const peopleBucket = "People"
const filmsBucket = "Film"
const planetsBucket = "Planet"
const speciesBucket = "Specie"
const starshipsBucket = "Starship"
const vehiclesBucket = "Vehicle"

// "people": "https://swapi.co/api/people/?format=json"
// "planets": "https://swapi.co/api/planets/?format=json"
// "films": "https://swapi.co/api/films/?format=json"
// "species": "https://swapi.co/api/species/?format=json"
// "vehicles": "https://swapi.co/api/vehicles/?format=json"
// "starships": "https://swapi.co/api/starships/?format=json"

// get people
func peopleGet(url string) *model.PeopleRes {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.PeopleRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	return page
}

func getAllPeople() []model.People {
	var allPeople []model.People
	res := peopleGet(string("https://swapi.co/api/people/?format=json"))
	for _, it := range res.Result {
		allPeople = append(allPeople, it)
	}
	for res.Next != "" {
		res = peopleGet(string(res.Next))
		for _, it := range res.Result {
			allPeople = append(allPeople, it)
		}
	}
	return allPeople
}

// get planets
func planetsGet(url string) *model.PlanetsRes {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.PlanetsRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	return page
}

func getAllPlanets() []model.Planet {
	var allPlanets []model.Planet
	res := planetsGet(string("https://swapi.co/api/planets/?format=json"))
	for _, it := range res.Result {
		allPlanets = append(allPlanets, it)
	}
	for res.Next != "" {
		res = planetsGet(string(res.Next))
		for _, it := range res.Result {
			allPlanets = append(allPlanets, it)
		}
	}
	return allPlanets
}

// get films
func filmsGet(url string) *model.FilmsRes {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.FilmsRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	return page
}

func getAllFilms() []model.Film {
	var allFilms []model.Film
	res := filmsGet(string("https://swapi.co/api/films/?format=json"))
	for _, it := range res.Result {
		allFilms = append(allFilms, it)
	}
	for res.Next != "" {
		res = filmsGet(string(res.Next))
		for _, it := range res.Result {
			allFilms = append(allFilms, it)
		}
	}
	return allFilms
}

// get species
func speciesGet(url string) *model.SpeciesRes {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.SpeciesRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	return page
}

func getAllSpecies() []model.Species {
	var allSpecies []model.Species
	res := speciesGet(string("https://swapi.co/api/species/?format=json"))
	for _, it := range res.Result {
		allSpecies = append(allSpecies, it)
	}
	for res.Next != "" {
		res = speciesGet(string(res.Next))
		for _, it := range res.Result {
			allSpecies = append(allSpecies, it)
		}
	}
	return allSpecies
}

// get vehicles
func vehiclesGet(url string) *model.VehiclesRes {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.VehiclesRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	return page
}

func getAllVehicles() []model.Vehicle {
	var allVehicles []model.Vehicle
	res := vehiclesGet(string("https://swapi.co/api/vehicles/?format=json"))
	for _, it := range res.Result {
		allVehicles = append(allVehicles, it)
	}
	for res.Next != "" {
		res = vehiclesGet(string(res.Next))
		for _, it := range res.Result {
			allVehicles = append(allVehicles, it)
		}
	}
	return allVehicles
}

// get starships
func starshipsGet(url string) *model.StarshipsRes {
	res, err := http.Get(url)
	CheckErr(err)
	defer res.Body.Close()

	body, err := ioutil.ReadAll(res.Body)
	CheckErr(err)

	page := &model.StarshipsRes{}
	err = json.Unmarshal(body, page)
	CheckErr(err)

	return page
}

func getAllStarships() []model.Starship {
	var allStarship []model.Starship
	res := starshipsGet(string("https://swapi.co/api/starships/?format=json"))
	for _, it := range res.Result {
		allStarship = append(allStarship, it)
	}
	for res.Next != "" {
		res = starshipsGet(string(res.Next))
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

func main() {
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
	for i, it := range people {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(peopleBucket))
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(string(i)), jsons)
			return err
		})
	}

	// store planets data
	fmt.Println("planets")
	planests := getAllPlanets()
	for i, it := range planests {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(planetsBucket))
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(string(i)), jsons)
			return err
		})
	}

	// store films data
	fmt.Println("films")
	films := getAllFilms()
	for i, it := range films {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(filmsBucket))
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(string(i)), jsons)
			return err
		})
	}

	// store species data
	fmt.Println("species")
	species := getAllSpecies()
	for i, it := range species {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(speciesBucket))
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(string(i)), jsons)
			return err
		})
	}

	// store vehicles data
	fmt.Println("vehicles")
	vehicles := getAllVehicles()
	for i, it := range vehicles {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(vehiclesBucket))
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(string(i)), jsons)
			return err
		})
	}

	// store starships data
	fmt.Println("starships")
	starships := getAllStarships()
	for i, it := range starships {
		db.Update(func(tx *bolt.Tx) error {
			b := tx.Bucket([]byte(starshipsBucket))
			jsons, errs := json.Marshal(it)
			CheckErr(errs)
			err := b.Put([]byte(string(i)), jsons)
			return err
		})
	}
}
