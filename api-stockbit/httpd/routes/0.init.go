package routes

import "stockbit-requirement/httpd/controller"

type (
	RestRoutes struct{}
)

var (
	Ctrl controller.RestController
)
