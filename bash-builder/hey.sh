# The out.sh lib allows doing colourful output
#%include std/out.sh

#%include ./stuff/hello.sh

if [[ -e "$1" ]]; then
    out:error "No argument set"
    exit 1
fi

# Did you know that ":" is a legitimate character for a bash function name?
# Any character that can be a file character can be used.
# Used here for namespacing.
phrase="$(hello:greet "$1")"
out:info "$phrase"

