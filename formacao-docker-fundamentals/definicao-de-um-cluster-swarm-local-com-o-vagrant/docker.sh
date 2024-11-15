#!/bin/bash
# Instalar Docker
curl -fsSL https://get.docker.com | sudo bash

# Instalar Docker Compose
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Adicionar o usuário vagrant ao grupo docker
sudo usermod -aG docker vagrant

# Reiniciar o serviço Docker
sudo systemctl enable docker
sudo systemctl start docker
