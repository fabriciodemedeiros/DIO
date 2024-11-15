# Explorando Kubernetes com Lógica de Programação

# Automatizando Ações com Pods Kubernetes

Este projeto é um script Python que gera comandos `kubectl` para gerenciar pods no Kubernetes de forma simples. O script recebe uma entrada do usuário que especifica a ação desejada e, em seguida, retorna o comando `kubectl` correspondente.

## Estrutura da Entrada

A entrada deve ser uma das seguintes ações:

- `"descrever"` - para descrever os detalhes de todos os pods.
- `"deletar"` - para deletar todos os pods.
- `"explicar"` - para explicar a estrutura e detalhes dos pods.
- `"listar"` - para listar todos os pods.

## Exemplo de Uso

Para utilizar o script, forneça a entrada conforme os exemplos a seguir.

1. **Descrever Pods**

   Entrada:
   ```
   descrever
   ```
   Saída:
   ```
   kubectl describe pods
   ```

2. **Deletar Todos os Pods**

   Entrada:
   ```
   deletar
   ```
   Saída:
   ```
   kubectl delete pods --all
   ```

3. **Explicar Pods**

   Entrada:
   ```
   explicar
   ```
   Saída:
   ```
   kubectl explain pods
   ```

4. **Listar Pods**

   Entrada:
   ```
   listar
   ```
   Saída:
   ```
   kubectl get pods
   ```

## Código

Aqui está o código do script:

```python
# Recebe a entrada do usuário
input_string = input()

def kubectl_command(input_string):
    # COMPLETE AQUI: Mapeie ações para comandos kubectl correspondentes
    actions_to_commands = {
        "descrever": "kubectl describe pods",
        "deletar": "kubectl delete pods --all",
        "explicar": "kubectl explain pods",
        "listar": "kubectl get pods"
    }
    
    # Verifica se a ação está mapeada e retorna o comando correspondente
    if input_string in actions_to_commands:
        return actions_to_commands[input_string]

# Gera e exibe o comando kubectl correspondente
print(kubectl_command(input_string))
```

# Desafio 2 - Gerenciando Volumes Persistentes em Clusters Kubernetes

Este projeto é um script Python que gera comandos `kubectl` para gerenciar Persistent Volumes (PVs) e Persistent Volume Claims (PVCs) no Kubernetes de forma simples. O script recebe uma entrada do usuário que especifica a ação desejada e o nome do volume ou claim, e em seguida, retorna o comando `kubectl` correspondente.

## Estrutura da Entrada

A entrada deve seguir a estrutura:

```
<ação>, <nome_do_recurso>
```

Onde:
- **ação**: Define o comando `kubectl` a ser gerado. As opções disponíveis são:
  - `"criar-pv"` - para criar um Persistent Volume a partir de um arquivo de configuração.
  - `"deletar-pv"` - para deletar um Persistent Volume específico.
  - `"criar-pvc"` - para criar um Persistent Volume Claim a partir de um arquivo de configuração.
  - `"deletar-pvc"` - para deletar um Persistent Volume Claim específico.
- **nome_do_recurso**: Nome do arquivo de configuração (`.yaml`) ou do recurso (PV ou PVC) para o qual a ação será executada.

## Exemplo de Uso

Para utilizar o script, forneça a entrada conforme os exemplos a seguir.

1. **Criar um Persistent Volume (PV)**

   Entrada:
   ```
   criar-pv, pv-config.yaml
   ```
   Saída:
   ```
   kubectl create -f pv-config.yaml
   ```

2. **Deletar um Persistent Volume (PV)**

   Entrada:
   ```
   deletar-pv, meu_pv
   ```
   Saída:
   ```
   kubectl delete pv meu_pv
   ```

3. **Criar um Persistent Volume Claim (PVC)**

   Entrada:
   ```
   criar-pvc, pvc-config.yaml
   ```
   Saída:
   ```
   kubectl create -f pvc-config.yaml
   ```

4. **Deletar um Persistent Volume Claim (PVC)**

   Entrada:
   ```
   deletar-pvc, meu_pvc
   ```
   Saída:
   ```
   kubectl delete pvc meu_pvc
   ```

## Código

Aqui está o código do script:

```python
# Recebe a entrada do usuário
input_string = input()

def kubectl_command(input_string):
    # Separa a entrada em ação e nome do volume ou claim
    action, resource_name = input_string.split(", ")
    
    # COMPLETE AQUI: Mapeie ações para comandos kubectl correspondentes
    actions_to_commands = {
        "criar-pv": "kubectl create -f",
        "deletar-pv": "kubectl delete pv",
        "criar-pvc": "kubectl create -f",
        "deletar-pvc": "kubectl delete pvc"
    }
    
    # Verifica se a ação está mapeada e retorna o comando correspondente
    if action in actions_to_commands:
        return f"{actions_to_commands[action]} {resource_name}"

# Gera e exibe o comando kubectl correspondente
print(kubectl_command(input_string))
```
