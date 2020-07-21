#!/bin/bash
if [ $1 == "--dev" ]; then
    echo "Starting development environment..."

    echo "Deconstructing containers, if any..."
    docker-compose -f cloud/docker-compose.yml down
    echo "Building development container..."
    docker-compose -f cloud/docker-compose.yml build --no-cache 
    echo "Starting development container..."
    docker-compose -f cloud/docker-compose.yml up -d 
fi
if [ $1 == "--prod" ]; then
    echo "Deployng in a production environment..."
    
    echo "Deconstructing containers, if any..."
    docker-compose -f cloud/docker-compose-prod.yml down
    echo "Building production container..."
    docker-compose -f cloud/docker-compose-prod.yml build --no-cache 
    echo "Starting production container..."
    docker-compose -f cloud/docker-compose-prod.yml up -d 
fi