using System;

namespace DesafioPOO.Models
{
    // TODO: Realizar os testes com as classes Nokia e Iphone
    public class Iphone : Smartphone
    {
        public Iphone(string numero, string modelo, string imei, int memoria)
            : base(numero, modelo, imei, memoria)
        {
        }

        public override void InstalarAplicativo(string nomeApp)
        {
            Console.WriteLine($"Instalando {nomeApp} no iPhone...");
        }
    }
}
