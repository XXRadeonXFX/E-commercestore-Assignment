#!/bin/bash

# Update and install Docker
sudo apt update -y
sudo apt install -y docker.io

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Optional: Add ubuntu user to docker group (avoids sudo)
sudo usermod -aG docker ubuntu

# Pull images from DockerHub
docker pull xxradeonxfx/user-service
docker pull xxradeonxfx/product-service
docker pull xxradeonxfx/cart-service
docker pull xxradeonxfx/order-service
docker pull xxradeonxfx/learner-frontend

# Run each container on proper port
docker run -d -p 3001:3001 --name user-service xxradeonxfx/user-service
docker run -d -p 3002:3002 --name product-service xxradeonxfx/product-service
docker run -d -p 3003:3003 --name cart-service xxradeonxfx/cart-service
docker run -d -p 3004:3004 --name order-service xxradeonxfx/order-service
docker run -d -p 3000:3000 --name frontend xxradeonxfx/frontend
