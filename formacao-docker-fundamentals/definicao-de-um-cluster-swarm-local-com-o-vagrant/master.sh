#!/bin/bash
# Inicializar o Swarm no nó master
sudo docker swarm init --advertise-addr=10.10.10.100

# Gerar token do worker e salvar em /vagrant/worker.sh
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh

# Exibir token para garantir que o worker saiba o que fazer
cat /vagrant/worker.sh
