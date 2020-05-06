package main

import (
	"fmt"
	"os"
	"os/signal"
	"time"
)

func main() {
	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs)

	for {
		sig := <-sigs
		fmt.Printf("%s: %s\n", time.Now().UTC(), sig)
	}
}
