package main

import (
  "os"
  "runtime"
  "github.com/alexflint/gallium"
)

func main() {
  runtime.LockOSThread()
  gallium.Loop(os.Args, onReady)
}

func onReady(app *gallium.App) {
  app.NewWindow("http://example.com/", "Window title!")
}
