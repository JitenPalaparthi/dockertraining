package main

import (
	"fmt"
	"net/http"
)

func main() {
	fmt.Println("Go application start running on the port 50060")
	http.HandleFunc("/greet", func(rw http.ResponseWriter, r *http.Request) {
		fmt.Fprintln(rw, "Hello World")
	})
	http.ListenAndServe(":50060", nil)
}
