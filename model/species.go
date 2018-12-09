package model

type SpeciesRes struct {
	Next     string    `json:"next"`
	Previous string    `json:"previous"`
	Result   []Species `json:"results"`
}

type Species struct {
	Name             string   `json:"name"`
	Classification   string   `json:"classification"`
	Designation      string   `json:"designation"`
	Average_height   string   `json:"average_height"`
	Skin_colors      string   `json:"skin_colors"`
	Hair_colors      string   `json:"hair_colors"`
	Eye_colors       string   `json:"eye_colors"`
	Average_lifespan string   `json:"average_lifespan"`
	Homeworld        string   `json:"homeworld"`
	Language         string   `json:"language"`
	People           []string `json:"people"`
	Films            []string `json:"films"`
	Created          string   `json:"created"`
	Edited           string   `json:"edited"`
	Url              string   `json:"url"`
}
