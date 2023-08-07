package main

import (
	"testing"

	"github.com/gorules/zen-go"
)

func TestZenEngine(t *testing.T) {
	zenEngine := zen.NewEngine(nil)
	defer zenEngine.Dispose()
}
