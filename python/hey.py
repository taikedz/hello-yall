import sys
import stuff.hello as hello

def get_args():
    if len(sys.argv) < 2:
        print("No arguments specified!")
    return sys.argv[1:]

for name in get_args():
    phrase = hello.greet(name)
    print( phrase )
