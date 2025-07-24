using System;
using DesafioPOO.Models;

// TODO: Realizar os testes com as classes Nokia e Iphone
class Program
{
    static void Main()
    {
        Smartphone nokia = new Nokia("1199999999", "Nokia Tijolão", "123456789", 32);
        nokia.Ligar();
        nokia.ReceberLigacao();
        nokia.InstalarAplicativo("Snake");

        Console.WriteLine();

        Smartphone iphone = new Iphone("1198888888", "iPhone 13", "987654321", 128);
        iphone.Ligar();
        iphone.ReceberLigacao();
        iphone.InstalarAplicativo("Instagram");
    }
}
