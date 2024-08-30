// Declare that there is a module "stuff" ...
mod stuff;

use std::env;

// Use the "hello" submodule from the declared "stuff" module
use stuff::hello;


fn get_arguments() -> Vec<String> {
    // Get the arguments from CLI and do check, then
    // return the arguments, without the program name
    let args : Vec<String> = env::args().collect();

    if args.len() <= 1 {
        eprintln!("Please specify arguments !");
        std::process::exit(1);
    }

    // We get a slice of an existing vector
    return args[1..]
        // but to return it, we need it to be a vector - so cast it back explicitly
        .to_vec();
}


fn main() {
    let args : Vec<String> = get_arguments();

    for name in args.iter() {
        println!("{}", hello::greet(name) );
    }
}

