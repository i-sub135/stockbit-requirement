package routes

import "github.com/gin-gonic/gin"

func (r *RestRoutes) IndexRoute(eng *gin.Engine) {
	eng.GET("/index", Ctrl.IndexCtrl)
}

func (r *RestRoutes) AuthRoute(group *gin.RouterGroup) {
	group.GET("", Ctrl.AuthCtrl)
}

func (r *RestRoutes) FilmRoute(group *gin.RouterGroup) {
	group.GET("", Ctrl.GetFilmCtrl)
	group.GET("/detail", Ctrl.GetFilmDetailCtrl)
}
