package model

type StarshipsRes struct {
	Next     string     `json:"next"`
	Previous string     `json:"previous"`
	Result   []Starship `json:"results"`
}

type Starship struct {
	ID                     string
	Name                   string   `json:"name"`
	Model                  string   `json:"model"`
	Manufacturer           string   `json:"manufacturer"`
	Cost_in_credits        string   `json:"cost_in_credits"`
	Length                 string   `json:"length"`
	Max_atmosphering_speed string   `json:"max_atmosphering_speed"`
	Crew                   string   `json:"crew"`
	Passenger              string   `json:"passengers"`
	Cargo_capacity         string   `json:"cargo_capacity"`
	Consumables            string   `json:"consumables"`
	Hyperdrive_rating      string   `json:"hyperdrive_rating"`
	MGLT                   string   `json:"MGLT"`
	Starship_class         string   `json:"starship_class"`
	Pilots                 []string `json:"pilots"`
	Films                  []string `json:"films"`
	Created                string   `json:"created"`
	Edited                 string   `json:"edited"`
	Url                    string   `json:"url"`
}
