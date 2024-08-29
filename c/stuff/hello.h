// We guard against multi-inclusion by setting a one-time declared name
#ifndef HELLO_H_
#define HELLO_H_

// This tells the compiler that it should expect to find such a
//   function defined in the binary code that is being linked
char* hello_greet(char* name);

#endif // HELLO_H_
