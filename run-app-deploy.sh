#!/bin/bash
if [ $1 == "--dev" ]; then
    echo "Starting development environment..."
    echo "Deconstructing containers, if any..."
    docker-compose down
    echo "Building development container..."
    docker-compose up -d --build
fi
if [ $1 == "--prod" ]; then
    echo "Deployng in a production environment"
    
    echo "Deconstructing containers, if any..."
    docker-compose -f docker-compose-prod.yml down
    echo "Building production container"
    docker-compose -f docker-compose-prod.yml up -d --build
fi