package main

import (
    "fmt"
    "os"
    "log"
    "net.myname.greeter/src/stuff"
)

func main() {
    if(len(os.Args) < 2) {
        log.Fatal("Please supply arguments!")
    }

    for _, person := range os.Args[1:] {
        var phrase string = stuff.Greet(person)
        fmt.Println(phrase)
    }
}

