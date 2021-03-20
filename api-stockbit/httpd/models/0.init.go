package models

import "stockbit-requirement/httpd/db"

type (
	RestModel struct{}
)

var (
	dbConcf    db.RestDB
	sqlConnect = dbConcf.Sql()
)
