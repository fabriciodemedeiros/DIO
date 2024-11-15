# Explorando Containers com Lógica de Programação

# Desafio 1 - Gerenciando Volumes em Containers

Este projeto é um script Python que gera comandos Docker para gerenciar volumes de forma simples. O script recebe uma entrada do usuário que especifica a ação desejada e o nome do volume, e em seguida, retorna o comando Docker correspondente.

## Estrutura da Entrada

A entrada deve seguir a estrutura:

```
<ação>, <nome_do_volume>
```

Onde:
- **ação**: Define o comando Docker a ser gerado. As opções disponíveis são:
  - `"criar"` - para criar um novo volume.
  - `"inspecionar"` - para inspecionar um volume existente.
  - `"remover"` - para remover um volume existente.
- **nome_do_volume**: Nome do volume Docker para o qual a ação será executada.

## Exemplo de Uso

Para utilizar o script, forneça a entrada conforme os exemplos a seguir.

1. **Criar um Volume**

   Entrada:
   ```
   criar, meu_volume
   ```
   Saída:
   ```
   docker volume create meu_volume
   ```

2. **Inspecionar um Volume**

   Entrada:
   ```
   inspecionar, meu_volume
   ```
   Saída:
   ```
   docker volume inspect meu_volume
   ```

3. **Remover um Volume**

   Entrada:
   ```
   remover, meu_volume
   ```
   Saída:
   ```
   docker volume rm meu_volume
   ```

## Código

Aqui está o código do script:

```python
# Recebe a entrada do usuário
input_string = input()

def docker_command(input_string):
    # Separa a entrada em ação e nome do volume
    action, volume_name = input_string.split(", ")
    
    # COMPLETE AQUI: Mapeie as ações para comandos Docker correspondentes
    actions_to_commands = {
        "criar": "docker volume create",
        "inspecionar": "docker volume inspect",
        "remover": "docker volume rm"
    }
    
    # Verifica se a ação está mapeada e retorna o comando correspondente
    if action in actions_to_commands:
        return f"{actions_to_commands[action]} {volume_name}"
    else:
        return "Ação inválida. Use 'criar', 'inspecionar' ou 'remover'."

# Gera e exibe o comando Docker correspondente
print(docker_command(input_string))
```

# Desafio 2 - Manipulando Containers Docker

Este projeto é um script Python que gera comandos Docker para gerenciar imagens e containers de forma simples. O script recebe uma entrada do usuário que especifica a ação desejada e o nome da imagem ou container, e em seguida, retorna o comando Docker correspondente.

## Estrutura da Entrada

A entrada deve seguir a estrutura:

```
<ação>, <nome_da_imagem_ou_container>
```

Onde:
- **ação**: Define o comando Docker a ser gerado. As opções disponíveis são:
  - `"baixar"` - para baixar uma imagem Docker.
  - `"executar"` - para executar uma imagem Docker em um container.
  - `"parar"` - para parar um container em execução.
  - `"remover"` - para remover um container.
- **nome_da_imagem_ou_container**: Nome da imagem ou do container Docker para o qual a ação será executada.

## Exemplo de Uso

Para utilizar o script, forneça a entrada conforme os exemplos a seguir.

1. **Baixar uma Imagem**

   Entrada:
   ```
   baixar, ubuntu
   ```
   Saída:
   ```
   docker pull ubuntu
   ```

2. **Executar uma Imagem**

   Entrada:
   ```
   executar, ubuntu
   ```
   Saída:
   ```
   docker run ubuntu
   ```

3. **Parar um Container**

   Entrada:
   ```
   parar, meu_container
   ```
   Saída:
   ```
   docker stop meu_container
   ```

4. **Remover um Container**

   Entrada:
   ```
   remover, meu_container
   ```
   Saída:
   ```
   docker rm meu_container
   ```

## Código

Aqui está o código do script:

```python
# Recebe a entrada do usuário
input_string = input()

def docker_command(input_string):
    # Separa a entrada em ação e nome da imagem/container
    action, name = input_string.split(", ")
    
    # COMPLETE AQUI: Mapeie ações para comandos Docker correspondentes
    actions_to_commands = {
        "baixar": "docker pull",
        "executar": "docker run",
        "parar": "docker stop",
        "remover": "docker rm"
    }
    
    # Verifica se a ação está mapeada e retorna o comando correspondente
    if action in actions_to_commands:
        return f"{actions_to_commands[action]} {name}"
    else:
        return "Ação inválida"

# Gera e exibe o comando Docker correspondente
print(docker_command(input_string))
```
