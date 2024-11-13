import "stuff/hello.dart";

void main(List<String> args) {
    if(args.length == 0) {
        print("Please supply names");
    }

    for(var name in args) {
        var greeting = say_hi(name);
        print(greeting);
    }
}
