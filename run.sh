#!/bin/bash
wget -O ngsild-datasource.tgz https://github.com/bfi-de/ngsild-grafana-datasource/releases/download/v1.0.0/ngsild-grafana-datasource-1.0.0.tgz
mkdir -p ./grafana/plugin/
tar xvf ngsild-datasource.tgz -C ./grafana/plugin/
MODEL_FOLDER="./model" docker-compose up -d
