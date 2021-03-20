package middleware

import (
	"errors"
	"os"
	"time"

	"github.com/dgrijalva/jwt-go"
)

func (r *RestMiddleware) CreateJWT(name, phone string) (string, time.Time, error) {

	keys := []byte(os.Getenv("API_KEY"))

	token := jwt.New(jwt.SigningMethodHS256)
	expired := time.Now().Add(time.Minute * 15)
	claims := make(jwt.MapClaims)

	claims["name"] = name
	claims["phone"] = phone
	claims["exp"] = expired.Unix()

	token.Claims = claims

	tokenStr, err := token.SignedString(keys)
	return tokenStr, expired, err
}

func (r *RestMiddleware) ValidateJWT(myToken string) (jwt.MapClaims, error) {

	keys := os.Getenv("API_KEY")

	token, err := jwt.Parse(myToken, func(token *jwt.Token) (interface{}, error) {
		return []byte(keys), nil
	})
	if token == nil {
		return nil, errors.New("Format Token not match")
	}

	if claims, ok := token.Claims.(jwt.MapClaims); ok && token.Valid {
		return claims, nil
	}
	return nil, err
}
