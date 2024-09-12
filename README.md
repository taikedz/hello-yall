# Hello Y'All !

Compare various programming languages like-for-like with an example program that's a touch better than "Hello World"

For this, we suggest here a basic application spec. The [full commentary is on dev.to/taikedz][devto], this repo comprises the individual examples as files.

You will need to set up the development environment of your choice to test each of these, however - there is no intention to cover basic setup instructions.

[devto]: https://dev.to/taikedz/polydev-a-better-hello-world-for-polyglot-devs-37p2

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

## Runtime

The original author uses Ubuntu, and basic instructions primarily target this system. It should be easy to achieve equivalent runtime bases on Windows and Mac:

* WSL Ubuntu environment is [easy to add on Windows](https://ubuntu.com/desktop/wsl) as an application in Windows on Win10 and Win11
* Mac users can usually substitute instructions using `apt` in preference for `brew` ([from Homebrew](https://brew.sh/))

Please do not add GUI and IDE-specific instructions, there will be no end to them ...

## Contributing

You are very welcome to showcase the fun and ease of use of your favorite language(s) here ! The original examples all follow the same logic more or less. It is suggested to follow the same implementation format where possible, as it allows comparing different languages like-for-like.

This repo exists to document myriad other ways to implement _Hello Y'All_ in as many languages as desired. They are example programs, nothing more. It is immensely preferable for the examples to be as idiomatic to each language as possible. Fell free to add comments to the code to explain particularities of a language at the point they are used.

For languages that compile bytecode or build outputs, please add a dedicated `.gitignore` file to the language folder to ignore output folders or files.

Please provide a `README.md` as instructions, rather than a `run.sh`

### PRs

A PR change must be contained within 1 commit: please squash your commits before raising a PR. If you need to amend your PR commits, these must be squashed as well before the PR can be merged.

Please DO NOT submit binaries. PRs with binary and compiled data will be rejected outright. Make use of .gitignore files at the top level of your implementation subfolder.

### Linking out

Code submitted must be standalone, and complete as-is. If you wish to include a link to a write-up on your implementation, please provide it in a corresponding readme.md at the top level of your implementation subfolder.

All user-contributed links are the responsibility of their contributor(s). The maintainers of this repository hold no responsibility for where the links lead to.

