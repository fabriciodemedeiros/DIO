# Docker Swarm com Vagrant

Este repositório configura um ambiente de Docker Swarm utilizando Vagrant, com um nó mestre (`master`) e dois nós trabalhadores (`node01` e `node02`). O processo de configuração é feito por meio de scripts de shell executados durante a inicialização das máquinas virtuais.

## Requisitos

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- Conexão com a internet para baixar as imagens e dependências.

## Estrutura do Projeto

- **Vagrantfile**: Define a configuração das máquinas virtuais (master e workers).
- **docker.sh**: Script para instalar o Docker e o Docker Compose nas máquinas virtuais.
- **master.sh**: Script para inicializar o Docker Swarm no nó master e gerar o token de worker.
- **worker.sh**: Script para unir os nós workers ao Docker Swarm utilizando o token gerado no master.

## Como Usar

### Passo 1: Iniciar o Vagrant

Clone este repositório e entre no diretório do projeto:

```bash
git clone https://seu-repositorio.git
cd seu-repositorio
```

Inicie as máquinas virtuais com o Vagrant:

```bash
vagrant up
```

O Vagrant irá criar e configurar três máquinas virtuais: uma para o nó `master` e duas para os nós `node01` e `node02`.

### Passo 2: Inicialização do Docker Swarm

Durante a inicialização, o Vagrant executará automaticamente os scripts `docker.sh`, `master.sh`, e `worker.sh` para configurar o ambiente.

- O **nó master** inicializa o Docker Swarm com o comando `docker swarm init` e gera o token para os nós workers.
- Os **nós workers** tentam se conectar ao Swarm utilizando o token gerado no `master.sh`.

### Passo 3: Verificação do Status

Após a configuração, você pode verificar o status do Docker Swarm executando o seguinte comando no nó master:

```bash
docker node ls
```

Isso mostrará uma lista dos nós do Swarm, incluindo o nó master e os workers.

## Observações

- O script `worker.sh` verifica se o nó já está no Swarm antes de tentar se juntar a ele. Se o nó já estiver no Swarm, ele não tenta se conectar novamente.
- O Vagrant usa uma rede privada (`10.10.10.x`) para a comunicação entre as máquinas virtuais.

## Problemas Comuns

- Se o script `worker.sh` não conseguir obter o token de worker, ele não conseguirá juntar o nó ao Swarm. Certifique-se de que o arquivo `worker.sh` gerado no nó master esteja correto.
- Caso o Docker ou o Docker Compose não sejam instalados corretamente, verifique a conectividade da máquina virtual e tente rodar os comandos manualmente.

## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
