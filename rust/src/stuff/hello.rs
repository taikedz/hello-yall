pub fn greet(name:&str) -> String {
    // Create a "mutable" and "owned"/heap String from the string-slice (native, on the stack)
    let mut phrase:String = String::from("Hello, ");

    // Push the stack content from "name" into the head object "phrase"
    phrase.push_str(name);

    return phrase;
}

