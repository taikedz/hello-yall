package stuff

// Because this function is to be used from outside the `stuff` package
//    it needs to be Capitalised.
func Greet(name string) string {
    return "Hello " + name
}

