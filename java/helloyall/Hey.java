package helloyall;

import helloyall.stuff.Hello;


public class Hey {
    public static void main(String[] args) {
        Hello greeter = new Hello();

        // Actual arguments start from zero - program name is
        //   not stored in the args array
        if(args.length < 1) {
            System.out.println("Please supply arguments");
            return;
        }

        for(int i = 0; i < args.length; i++) {
            String phrase = greeter.hello(args[i]);
            System.out.println(phrase);
        }
    }
}

