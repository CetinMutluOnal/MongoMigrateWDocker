#!/usr/bin/bash
MONGO_URI="mongodb://localhost:27020/"
DUMP_LOCATION="/home/xample/mongo" #Define output location for mongo dump.
DOCKER_COMPOSE_LOCATION="/home/xample/project/" #Usually same location with project folder

mongodump --uri="$MONGO_URI" /out:$DUMP_LOCATION
cd $DOCKER_COMPOSE_LOCATION
docker compose up -d   