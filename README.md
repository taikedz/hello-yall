# Hi Net ! Advanced Project Spec

The _Hi Net_ example-project is intended to exercise a few more moving parts of a language and its standard library. It's a network-oriented project, with the fundamentals of threading, subprocess parallelism, and resolution of configuration through environment variables, configuration files, and command line arguments.

This is the "advanced project" branch of Hello Y'All. The specification has a wider scope to encompass a few extra feautres that should be expected of a language.

This is intended to remain a CLI-oriented space, so some languages such as PHP or Jenkinsfile are not going to be expected - but if it's possible, then why not. Some further features of the spec make it impracticable for some languages such as shell but again, if you would like to see its shape in such languages, your contribution is welcome.

## The Hi Net Spec

There is a Client mode and a Server mode to Hi Net. The program is single, and operates in either mode on-launch

### Client mode

The Hi Net client mode gets user input, and writes it over a network connection to a listening server. When the server returns the message, this is registered.

* Client connects to a remote TCP port
* The user is prompted for a name ; this is sent over with a message ID
* The server will respond with a message ID and a greeting for the name.
* Client registers the time taken to receive the response message in a file, and prints the response to output

### Server mode

* Server listens on a TCP port
* Server spawns two workers
    * each reads from a shared processing queue, and writes to a shared results queue
    * each writes to the results queue with a random delay between 0.3 to 0.9 seconds after popping a message from the processing queue
* Each worker produces a greeting on the name in the queue, with different outputs each
* Server listens for incoming messages, nad places these in the share processing queue
* Server gets messages from the results queue, and sends the message back to the original client

### Configuration

A single configuration file serves to provide overrides on the program defaults. Both modes' configurations reside in the same file. The client can ignore server confgiurations, and vice-versa.

Configurations can also come from environment variables, which override configuration file values if clash.

Configurations can also come from command line arguments, which override other configuration values if clash.

## Contributing

Please feel free to contribute your solutions to this specification. Make sure to annotate with comments, as this is intended to be a learning resource. If a new implementation is offered, it must implement the specification fully at time of submission.

If a part of the specifcation is unclear in such a way that it cannot be implemented, please do raise a change request to address it.

All contributions are to be made under the GPLv3, with authors retaining the copyright on their contributions.

### PRs

A PR change must be contained within 1 commit: please squash your commits before raising a PR. If you need to amend your PR commits, these must be squashed as well before the PR can be merged.

Please DO NOT submit binaries. PRs with binary and compiled data will be rejected outright. Make use of `.gitignore` files at the top level of your implementation subfolder.

### Linking out

Code submitted must be standalone, and complete as-is. If you wish to include a link to a write-up on your implementation, please provide it in a corresponding `readme.md` at the top level of your implementation subfolder.

All user-contributed links are the responsibility of their contributor(s). The maintainers of this repository hold no responsibility for where the links lead to.

## Use of content

The content in this repository is intended to provide a learning resource only. It is not recommended to use any of the code in this repository as an example of good-practice, much less copied to a deployed solution. This is advisory - you remain the maker of your own desitiny...!

