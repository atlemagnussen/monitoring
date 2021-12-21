#!/usr/bin/env bash

docker run --rm -p 9876:9876 -d caarlos0/speedtest-exporter

docker run -d \
  --name=speedtest-exporter \
  -p 9798:9798 \
  --restart unless-stopped \
  miguelndecarvalho/speedtest-exporter