#include <stdlib.h>
#include <string.h>

char* hello_greet(char* name) {
    // Constant, on the stack
    char* base_hello = "Hello ";

    // Because we're returning the data out of a function,
    //   we need it on the heap
    //   The +1 is for the null-terminator on the end of the string
    char* phrase = malloc(strlen(base_hello) + strlen(name) + 1);

    strcpy(phrase, base_hello);
    strcat(phrase, name);

    return phrase;
}

