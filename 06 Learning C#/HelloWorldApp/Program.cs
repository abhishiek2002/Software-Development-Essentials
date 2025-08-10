using System;

namespace HelloWorld {

    class Program{

        static void Main(string[] args){
            Console.WriteLine("Hello World!");
            Console.WriteLine("Enter your name");
            string str = Console.ReadLine();
            Console.WriteLine("Hello there!, " + str);
        }
    }
}
