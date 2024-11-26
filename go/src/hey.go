package main

import (
    "fmt"
    "os"
    "log"

    // We import the package files altogether
    // NOTE it self-declares the package name as "greeter" not "stuff"
    "net.myname.greeter/src/stuff"
)

func main() {
    if(len(os.Args) < 2) {
        log.Fatal("Please supply arguments!")
    }

    for _, person := range os.Args[1:] {
        // package "greeter" from the src/stuff/ folder
        var phrase string = greeter.Greet(person)
        fmt.Println(phrase)
    }
}

