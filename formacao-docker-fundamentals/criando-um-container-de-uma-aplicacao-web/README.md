# Ambiente Completo de Desenvolvimento com Docker Compose

Este projeto configura um ambiente de desenvolvimento web completo com Apache, PHP, MySQL e phpMyAdmin usando Docker Compose. É ideal para aplicações PHP que utilizam banco de dados MySQL e necessitam de uma interface gráfica para gerenciamento de dados.

## Pré-requisitos

- [Docker](https://docs.docker.com/get-docker/) instalado
- [Docker Compose](https://docs.docker.com/compose/install/) instalado

## Serviços

Este ambiente inclui os seguintes serviços:

- **Apache com PHP**: Servidor web Apache com PHP 8.1
- **MySQL**: Banco de dados MySQL 8.0
- **phpMyAdmin**: Interface gráfica para gerenciamento do banco de dados MySQL

## Configuração

- **Porta 80**: Acesso à aplicação web (Apache + PHP) em `http://localhost:80`.
- **Porta 8080**: Acesso ao phpMyAdmin em `http://localhost:8080` para gerenciar o banco de dados MySQL.
- **Porta 3306**: Porta do MySQL para acesso externo (opcional).

## Instruções para Uso

1. Clone este repositório ou copie o arquivo `docker-compose.yml` para seu ambiente de desenvolvimento.
   
2. Crie o diretório `src` na raiz do projeto e adicione os arquivos PHP da sua aplicação:
   ```sh
   mkdir src
   ```

3. (Opcional) Crie um arquivo `php.ini` na raiz do projeto para customizar as configurações do PHP, se necessário.

4. Execute o comando abaixo para iniciar todos os serviços em segundo plano:
   ```sh
   docker-compose up -d
   ```

5. Verifique os serviços acessando as URLs:
   - Aplicação web: [http://localhost:80](http://localhost:80)
   - phpMyAdmin: [http://localhost:8080](http://localhost:8080)

## Configuração dos Contêineres

### Apache e PHP

- A imagem `php:8.1-apache` é usada para rodar o servidor web Apache com suporte ao PHP.
- Os arquivos PHP da aplicação devem estar no diretório `src`, que é mapeado para o diretório padrão do Apache no container (`/var/www/html`).

### MySQL

- A imagem `mysql:8.0` é usada para o banco de dados.
- Variáveis de ambiente configuram o usuário, a senha e o banco de dados inicial.
- O volume `db_data` persiste os dados do banco de dados, garantindo que eles não sejam perdidos quando o container for reiniciado.

### phpMyAdmin

- A imagem `phpmyadmin:latest` é usada para gerenciar o banco de dados MySQL via interface gráfica.
- A porta `8080` permite o acesso ao phpMyAdmin em `http://localhost:8080`.

## Parar os Serviços

Para parar e remover os containers, execute:

```sh
docker-compose down
```

Isso encerrará todos os containers e redes criados, mas o volume `db_data` com os dados do MySQL será preservado.

## Personalizações

### Configuração do PHP

Para customizar o PHP, você pode adicionar um arquivo `php.ini` na raiz do projeto e mapear para o container. Isso permitirá ajustar configurações como limites de upload, timezone, entre outros.

### Configuração do MySQL

Você pode alterar as variáveis de ambiente para definir seu próprio usuário e senha, ou mesmo adicionar outros bancos de dados conforme necessário.

## Estrutura de Arquivos

```plaintext
.
├── docker-compose.yml        # Arquivo de configuração do Docker Compose
├── src/                      # Diretório com os arquivos PHP da aplicação
└── php.ini                   # (Opcional) Arquivo de configuração customizado do PHP
```

## Referências

- [Documentação do Docker](https://docs.docker.com/)
- [Documentação do Docker Compose](https://docs.docker.com/compose/)
- [Imagem oficial do PHP no Docker Hub](https://hub.docker.com/_/php)
- [Imagem oficial do MySQL no Docker Hub](https://hub.docker.com/_/mysql)
- [Imagem oficial do phpMyAdmin no Docker Hub](https://hub.docker.com/r/phpmyadmin/phpmyadmin)
