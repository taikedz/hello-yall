using System;

// So long as all the classes we use are in the same namespace
//  they will all be accessible within its scope
namespace Hey {
    public class hey
    {
        public static void Main(string[] args)
        {
            if (args.Length == 0) {
                Console.WriteLine("Please supply arguments");
                System.Environment.Exit(1);
            }

            foreach(string name in args) {
                Console.WriteLine (Hello.greet(name));
            }
        }
    }
}
