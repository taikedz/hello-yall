#include <stdlib.h>
#include <stdio.h>
#include "stuff/hello.h"

int main(int argc, char* argv[]) {

    if(argc < 2) {
        // There is always at least one arg at argv[0], the program's name
        printf("No arguments supplied\n");
        return 1;
    }

    for(int i=1; i < argc; i++) {
      char* phrase = hello_greet(argv[i]);
      printf("%s\n", phrase);

      // For completeness, we note here that any allocated memory
      //     MUST be deallocated - and ONCE only !
      free(phrase);
  }
}

