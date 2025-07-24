
# 💾 Desafio SQL - Análise de Filmes

Este repositório contém as soluções do desafio de Banco de Dados da [DIO](https://www.dio.me/), onde aplicamos consultas SQL para extrair informações de um banco de dados de filmes.

---

## 📌 Como executar

1. Instale e abra o **SQL Server Management Studio**.
2. Execute o script `Script Filmes.sql` para criar e popular as tabelas.
3. Execute cada uma das consultas abaixo para cumprir os desafios propostos.

---

## 📋 Consultas

### 1. Buscar o nome e ano dos filmes
```sql
SELECT 
    Nome, 
    Ano
FROM 
    Filmes;
```

### 2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
```sql
SELECT 
    Nome, 
    Ano
FROM 
    Filmes
ORDER BY 
    Ano ASC;
```

### 3. Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
```sql
SELECT 
    Nome, 
    Ano, 
    Duracao
FROM 
    Filmes
WHERE 
    Nome = 'De Volta para o Futuro';
```

### 4. Buscar os filmes lançados em 1997
```sql
SELECT 
    Nome, 
    Ano
FROM 
    Filmes
WHERE 
    Ano = 1997;
```

### 5. Buscar os filmes lançados APÓS o ano 2000
```sql
SELECT 
    Nome, 
    Ano
FROM 
    Filmes
WHERE 
    Ano > 2000;
```

### 6. Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
```sql
SELECT 
    Nome, 
    Duracao
FROM 
    Filmes
WHERE 
    Duracao > 100 
    AND Duracao < 150
ORDER BY 
    Duracao ASC;
```

### 7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
```sql
SELECT 
    Ano, 
    COUNT(*) AS QuantidadeFilmes, 
    SUM(Duracao) AS DuracaoTotal
FROM 
    Filmes
GROUP BY 
    Ano
ORDER BY 
    DuracaoTotal DESC;
```

### 8. Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
```sql
SELECT 
    PrimeiroNome, 
    UltimoNome
FROM 
    Atores
WHERE 
    Genero = 'M';
```

### 9. Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
```sql
SELECT 
    PrimeiroNome, 
    UltimoNome
FROM 
    Atores
WHERE 
    Genero = 'F'
ORDER BY 
    PrimeiroNome ASC;
```

### 10. Buscar o nome do filme e o gênero
```sql
SELECT 
    f.Nome      AS NomeFilme, 
    g.Genero    AS Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id;
```

### 11. Buscar o nome do filme e o gênero do tipo "Mistério"
```sql
SELECT 
    f.Nome      AS Filme, 
    g.Genero    AS Genero
FROM 
    Filmes f
JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
JOIN 
    Generos g ON fg.IdGenero = g.Id
WHERE 
    g.Genero = 'Mistério';
```

### 12. Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
```sql
SELECT 
    f.Nome AS Filme, 
    a.PrimeiroNome, 
    a.UltimoNome, 
    ef.Papel
FROM 
    Filmes f
INNER JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN 
    Atores a ON ef.IdAtor = a.Id
ORDER BY 
    f.Nome ASC,          -- Ordena por nome do filme
    a.UltimoNome ASC,    -- Depois pelo sobrenome do ator
    a.PrimeiroNome ASC;  -- Por fim, pelo primeiro nome do ator
```

---

## ✅ Objetivos

- Praticar `SELECT`, `JOIN`, `GROUP BY`, `ORDER BY`, `WHERE`.
- Realizar análises simples com dados relacionais de um sistema de filmes.

---

## 🔗 Fonte

Repositório original do desafio:  
[github.com/digitalinnovationone/trilha-net-banco-de-dados-desafio](https://github.com/digitalinnovationone/trilha-net-banco-de-dados-desafio)

---

## 🧑‍💻 Autor

Desenvolvido por **Fabrício de Medeiros** como parte da formação na plataforma [Digital Innovation One](https://dio.me).

- 💼 [LinkedIn](https://www.linkedin.com/in/fabricio-de-medeiros/)  
- 🧑‍💻 [GitHub](https://github.com/fabriciodemedeiros)  
- 🌐 [Website](https://fasil.criarsite.online)  
- ✉️ E-mail: [gannba@hotmail.com](mailto:gannba@hotmail.com)
