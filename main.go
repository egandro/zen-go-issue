package main

import (
	"fmt"

	"github.com/gorules/zen-go"
)

func main() {
	fmt.Println("hello world")

	zenEngine := zen.NewEngine(nil)
	defer zenEngine.Dispose()
}
