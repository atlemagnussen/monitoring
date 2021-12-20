
#!/usr/bin/env bash

docker run --user $(id -u):$(id -g) -d \
    -p 9090:9090 \
    -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml \
    -v /mnt/md1/Data/prometheus/data:/prometheus:z \
    prom/prometheus
