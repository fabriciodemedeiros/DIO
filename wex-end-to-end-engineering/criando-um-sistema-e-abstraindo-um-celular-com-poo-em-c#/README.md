
# 📱 Sistema de Celulares com POO em C#

Projeto desenvolvido como parte do desafio da DIO na trilha .NET: **"Criando um sistema e abstraindo um celular com POO em C#"**.

---

## 🧠 Objetivo

Modelar um sistema orientado a objetos para representar smartphones de diferentes marcas (Nokia e iPhone), utilizando herança, classes abstratas e polimorfismo em C# com .NET Core 3.1.

---

## 🏗 Estrutura do Projeto

```
DesafioPOO/
├── Models/
│   ├── Smartphone.cs
│   ├── Nokia.cs
│   └── Iphone.cs
├── Program.cs
└── DesafioPOO.csproj
```

---

## 📌 Requisitos do Desafio

- ✅ A classe `Smartphone` deve ser abstrata, contendo:
  - Atributos: `Numero`, `Modelo`, `IMEI`, `Memoria`
  - Métodos: `Ligar()`, `ReceberLigacao()` e `InstalarAplicativo(string nome)` (abstrato)
- ✅ As classes `Nokia` e `Iphone` devem herdar de `Smartphone`
- ✅ O método `InstalarAplicativo()` deve ser sobrescrito em ambas

---

## 💻 Como executar

1. Verifique se o [.NET Core SDK 3.1](https://dotnet.microsoft.com/download/dotnet/3.1) está instalado
2. Clone este repositório ou copie os arquivos
3. No terminal, acesse o diretório do projeto e execute:

```bash
dotnet restore
dotnet run
```

---

## ✅ Resultado Esperado

```txt
Ligando...
Recebendo ligação...
Instalando Snake no Nokia...

Ligando...
Recebendo ligação...
Instalando Instagram no iPhone...
```

---

## 🛠 Tecnologias Utilizadas

- C# com Programação Orientada a Objetos
- .NET Core 3.1 (console)
- Visual Studio Code

---

## 🧑‍💻 Autor

Desenvolvido por **Fabrício de Medeiros** como parte da formação na plataforma [Digital Innovation One](https://dio.me).

- 💼 [LinkedIn](https://www.linkedin.com/in/fabricio-de-medeiros/)    
- 🧑‍💻 [GitHub](https://github.com/fabriciodemedeiros)  
- 🌐 [Website](https://fasil.criarsite.online)  
- ✉️ E-mail: [gannba@hotmail.com](mailto:gannba@hotmail.com)

---
