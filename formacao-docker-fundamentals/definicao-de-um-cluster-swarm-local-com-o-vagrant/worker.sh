#!/bin/bash

# Função para verificar se o nó já está no Docker Swarm
function check_swarm_status() {
  if docker info | grep -q "Swarm: active"; then
    echo "Este nó já está no Docker Swarm."
    exit 0
  else
    echo "Este nó não está no Docker Swarm. Tentando juntar ao Swarm..."
  fi
}

# Função para unir o nó ao Docker Swarm
function join_swarm() {
  # Token do worker
  WORKER_TOKEN=$(cat /vagrant/worker.sh)
  SWARM_MANAGER_IP="10.10.10.100"
  
  if [ -z "$WORKER_TOKEN" ]; then
    echo "Erro: Não foi possível obter o token do worker. Certifique-se de que o arquivo /vagrant/worker.sh está correto."
    exit 1
  fi

  echo "Tentando unir este nó ao Docker Swarm..."

  # Tentando unir o nó ao Docker Swarm
  sudo docker swarm join --token "$WORKER_TOKEN" "$SWARM_MANAGER_IP:2377"

  if [ $? -eq 0 ]; then
    echo "Nó unido ao Docker Swarm com sucesso!"
  else
    echo "Falha ao unir o nó ao Docker Swarm."
    exit 1
  fi
}

# Função principal
function main() {
  echo "Iniciando configuração do nó worker..."

  # Verifica se o nó já está no swarm e tenta unir, se necessário
  check_swarm_status
  
  # Tenta unir o nó ao Swarm
  join_swarm

  echo "Configuração do nó worker concluída com sucesso!"
}

# Executa o script principal
main
