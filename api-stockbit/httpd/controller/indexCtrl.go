package controller

import "github.com/gin-gonic/gin"

func (r *RestController) IndexCtrl(res *gin.Context) {
	out := response.RespOK(map[string]interface{}{
		"Pesan":   "Welcome to Microservices",
		"Version": 1,
	})

	res.JSON(out.Code, out)
}
