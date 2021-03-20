package controller

import (
	"time"

	"github.com/gin-gonic/gin"
)

func (r *RestController) AuthCtrl(res *gin.Context) {
	var (
		name  = res.Query("name")
		phone = res.Query("phone")
	)

	switch {
	case name == "" || phone == "":
		out := response.RespBad(1, "name & phone can't empty")
		res.JSON(out.Code, out)
	default:
		var (
			token string
			err   error
			waktu time.Time
		)

		token, waktu, err = middle.CreateJWT(name, phone)
		if err != nil {
			out := response.RespBad(1, err.Error())
			res.JSON(out.Code, out)
			return
		}

		out := response.RespOK(map[string]interface{}{
			"Token":      token,
			"Expired_To": waktu.Format("2006-01-02 15:04:05"),
		})
		res.JSON(out.Code, out)
	}
}
