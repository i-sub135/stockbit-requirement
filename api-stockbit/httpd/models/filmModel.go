package models

import (
	"stockbit-requirement/httpd/store"
	"strconv"
)

func (r *RestModel) GetListFilm(film *[]store.FilmStructure, count *int64, page, search string) {

	var (
		c     = make(chan int64)
		limit = 10
		p, _  = strconv.Atoi(page)
		pages = (p - 1) * limit
		like  = "%" + search + "%"
	)
	sqlConnect.Table("t_film").
		Where("title LIKE ?", like).
		Offset(pages).
		Limit(limit).
		Find(film)
	go countFilm(search, c)

	*count = <-c
}

func countFilm(search string, c chan int64) {
	var (
		count int64
	)
	like := "%" + search + "%"
	sqlConnect.Table("t_film").
		Where("title LIKE ?", like).Count(&count)

	c <- count
}
