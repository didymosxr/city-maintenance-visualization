#!/bin/bash
wget -O ngsild-datasource.tgz https://github.com/bfi-de/ngsild-grafana-datasource/releases/download/v1.0.0/ngsild-grafana-datasource-1.0.0.tgz
mkdir -p ./grafana/plugin/
tar xvf ngsild-datasource.tgz -C ./grafana/plugin/

wget -O volkovlabs-form-panel-3.8.0.zip https://storage.googleapis.com/plugins-community/volkovlabs-form-panel/release/3.8.0/volkovlabs-form-panel-3.8.0.zip
unzip  -o volkovlabs-form-panel-3.8.0.zip -d ./grafana/plugin/

MODEL_FOLDER="./model" docker-compose up -d
