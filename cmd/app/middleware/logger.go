package middleware

import (
	"net/http"
)

/*
// Logger логируем до и после ...
func Logger(handler http.Handler) http.Handler {
	// middleware "заворачивает" Handler, возвращая новый Handler
	return http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
		// до выполнения handler'а
		log.Printf("START: %s %s", request.Method, request.URL.Path)

		// выполнения handler'а
		handler.ServeHTTP(writer, request)

		// после выполнения handler'а
		log.Printf("FINISH: %s %s", request.Method, request.URL.Path)
	})
}
*/

// CheckHeader ...
func CheckHeader(header, value string) func(handler http.Handler) http.Handler {
	return func(handler http.Handler) http.Handler {
		return http.HandlerFunc(func(writer http.ResponseWriter, request *http.Request) {
			if value != request.Header.Get(header) {
				http.Error(writer, http.StatusText(http.StatusBadRequest), http.StatusBadRequest)
				return
			}

			handler.ServeHTTP(writer, request)
		})
	}
}
