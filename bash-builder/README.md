Get bash builder at <https://gitlab.com/taikedz/bash-builder>

Install it:

    git clone https://gitlab.com/taikedz/bash-builder
    cd bash-builder
    ./install.sh --libs

Reload your shell (ensure there are no running jobs in the session)

    exec bash

It's installed!

---

Build the example

    bbuild hey.sh

Run it

    ./build-outd/hey.sh
    ./build-outd/hey.sh Hayden Kelly
