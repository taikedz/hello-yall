import { greet } from './stuff/hello.ts'

if (process.argv.length <= 2 ) {
    console.log("Please supply names !");
    process.exit(1);
}

for(var name of process.argv.slice(2)) {
    var phrase = greet(name);
    console.log(phrase);
}

