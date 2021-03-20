package main

import (
	"os"
	"stockbit-requirement/httpd/middleware"
	"stockbit-requirement/httpd/routes"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func init() {
	err := godotenv.Load()
	if err != nil {
		panic(err)
	}
}

func main() {
	mode := os.Getenv("MODE")
	gin.SetMode(mode)

	var (
		// setup routes
		route = gin.Default()
		auth  = route.Group("/auth")
		film  = route.Group("/film")

		// initial package used
		app   routes.RestRoutes
		midle middleware.RestMiddleware
	)

	film.Use(midle.ReqValidator)

	// used routes
	app.IndexRoute(route)
	app.AuthRoute(auth)
	app.FilmRoute(film)

	_ = route.Run()

}
