# Ensure a predictable location to source from
HERE="$(dirname "$0")"

# Imports the file contents ; all tokens in the file are added to the global scope
source "$HERE/stuff/hello.sh"

if [[ -z "$*" ]]; then
  echo "No arguments supplied"
  exit 1
fi

for name in "$@"; do
    phrase="$(hello_greet "$name")"
    echo "$phrase"
done

