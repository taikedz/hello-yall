# Hello Y'All !

Compare various programming languages like-for-like with an example program that's a touch better than "Hello World"

For this, we suggest here a basic application spec. The [full commentary is on dev.to/taikedz][devto], this repo comprises the individual examples as files.

You will need to set up the development environment of your choice to test each of these, however - there is no intention to cover basic setup instructions.

## The Hello Y'All Spec

The spec is very simple:

* The example takes at least one command line argument, and gracefully handles the event of no-arguments
* The argument handling should happen in a separate function in the main file, and only needs to use positional argument extraction where applicable
* The example requires a function to be placed in a second file in a subfolder (the sub-function)
* The sub-function takes a string parameter, and returns a string built of the input parameter and some extra text.
* The example loops over CLI arguments, calling one at a time, passing each down to the sub-function in turn, and each time stores the returned value in a variable
* The stored variables are printed, each on a single line, one directly after the other
* Include the overall bare-minimum instructions include how to build the program (if necessary) and run it
    * (assuming an existing installation of the interpreter/compiler/runtime)

True to the theme, the main content is usually a greeting text, and the parameters are typically names.

## Contributing

You are very welcome to showcase the fun and ease of use of your favorite language(s) here ! The original examples all follow the same logic more or less. It is suggested to follow the same implementation format where possible, as it allows comparing different languages like-for-like.

This repo exists to document myriad other ways to implement _Hello Y'All_ in as many languages as desired. They are example programs, nothing more. It is immenely preferable for the examples to be as idiomatic to each language as possible.

For languages that compile bytecode or build outputs, please add a dedicated `.gitignore` file to the language folder to ignore output folders or files.


[devto]: https://dev.to/taikedz/polydev-a-better-hello-world-for-polyglot-devs-37p2
