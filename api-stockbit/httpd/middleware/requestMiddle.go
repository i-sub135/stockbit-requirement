package middleware

import (
	"fmt"

	"github.com/gin-gonic/gin"
)

func (r *RestMiddleware) ReqValidator(res *gin.Context) {
	var (
		token string = res.Query("token")
	)

	switch {
	case token == "":
		out := response.RespBad(401, "Token can't be empty")
		res.JSON(out.Code, out)
		res.Abort()
	default:
		_, err := r.ValidateJWT(token)
		if err != nil {
			out := response.RespBad(401, "Token Not Valid :: "+err.Error()+" [ Please Get Accses on Endpoint /auth ]")
			res.JSON(out.Code, out)
			res.Abort()
			return
		}
		fmt.Println(res.Writer.Status())
		res.Next()
	}

}
