package controller

import (
	"encoding/json"
	"io/ioutil"
	"net/http"
	"os"
	"stockbit-requirement/httpd/store"

	"github.com/gin-gonic/gin"
)

func (r *RestController) GetFilmCtrl(res *gin.Context) {
	var (
		search string = res.Query("search")
		page   string = res.Query("page")

		count int64

		filmStruc []store.FilmStructure
		output    struct {
			CountRow int64
			DataFilm []store.FilmStructure
		}
	)

	model.GetListFilm(&filmStruc, &count, page, search)

	switch {
	case filmStruc == nil || len(filmStruc) == 0:
		out := response.RespNotFound(1, "data not found")
		res.JSON(out.Code, out)
	default:
		output.CountRow = count
		output.DataFilm = filmStruc
		out := response.RespOK(output)
		res.JSON(out.Code, out)
	}

}

func (r *RestController) GetFilmDetailCtrl(res *gin.Context) {
	var (
		imdbID = res.Query("imdbID")
		url    string
		client = &http.Client{}
		method = "GET"
		data   interface{}
	)

	url = os.Getenv("URL_OMDBAPI") + imdbID
	req, err := http.NewRequest(method, url, nil)
	if err != nil {
		out := response.RespBad(1, err.Error())
		res.JSON(out.Code, out)
		return
	}

	resHttp, err := client.Do(req)
	if err != nil {
		out := response.RespBad(1, err.Error())
		res.JSON(out.Code, out)
		return
	}

	defer resHttp.Body.Close()

	body, err := ioutil.ReadAll(resHttp.Body)
	if err != nil {
		out := response.RespBad(1, err.Error())
		res.JSON(out.Code, out)
		return
	}

	json.Unmarshal(body, &data)

	out := response.RespOK(data)
	res.JSON(out.Code, out)
}
