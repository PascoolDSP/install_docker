#!/bin/bash

# Supprimer les anciennes versions éventuelles
sudo dnf remove -y docker \
                docker-client \
                docker-client-latest \
                docker-common \
                docker-latest \
                docker-latest-logrotate \
                docker-logrotate \
                docker-engine \
                podman \
                runc

# Installer les outils nécessaires
sudo dnf -y install dnf-plugins-core

# Ajouter le dépôt officiel Docker
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Installer Docker Engine
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Démarrer Docker
sudo systemctl enable --now docker

# Vérifier le statut
sudo systemctl status docker

# Test de fonctionnement
sudo docker run hello-world
