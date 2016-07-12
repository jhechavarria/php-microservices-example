#!/usr/bin/env bash

docker-compose -f microservices/support/docker-compose.yml up -d --remove-orphans --build

docker-compose -f microservices/application/website/docker-compose.yml up -d --remove-orphans --build
docker-compose -f microservices/application/order/docker-compose.yml up -d --remove-orphans --build
docker-compose -f microservices/application/inventory/docker-compose.yml up -d --remove-orphans --build

cd microservices/application/order/; composer install; cd ../../..
