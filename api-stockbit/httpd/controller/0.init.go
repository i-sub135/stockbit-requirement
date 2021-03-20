package controller

import (
	"stockbit-requirement/httpd/addons/respons"
	"stockbit-requirement/httpd/middleware"
	"stockbit-requirement/httpd/models"
)

type (
	RestController struct{}
)

var (
	response respons.RestResponse
	middle   middleware.RestMiddleware
	model    models.RestModel
)
