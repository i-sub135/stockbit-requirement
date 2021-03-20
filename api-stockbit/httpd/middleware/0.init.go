package middleware

import "stockbit-requirement/httpd/addons/respons"

type (
	RestMiddleware struct{}
)

var (
	response respons.RestResponse
)
