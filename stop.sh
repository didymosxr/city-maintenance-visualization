#!/bin/bash
docker-compose down
docker volume rm -f $(docker volume ls -f name=city-maintenance-visualization_* -qf dangling=true)