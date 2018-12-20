package model

type FilmsRes struct {
	Next     string `json:"next"`
	Previous string `json:"previous"`
	Result   []Film `json:"results"`
}

type Film struct {
	ID            string   `xorm:"id"`
	Title         string   `json:"title"`
	Episode_id    int      `json:"episode_id"`
	Opening_crawl string   `json:"opening_crawl"`
	Director      string   `json:"director"`
	Producer      string   `json:"producer"`
	Release_data  string   `json:"release_data"`
	Character     []string `json:"characters" xorm:"actor"`
	Planets       []string `json:"planets"`
	Starships     []string `json:"starships"`
	Vehicles      []string `json:"vehicles"`
	Species       []string `json:"species"`
	Created       string   `json:"created "xorm:"-"`
	Edited        string   `json:"edited" xorm:"-"`
	Url           string   `json:"url" xorm:"-"`
}