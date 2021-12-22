
#!/usr/bin/env bash
docker container rm prometheus-atle

docker run --user $(id -u):$(id -g) -d \
    --name prometheus-atle \
    -p 9090:9090 \
    -v $(pwd)/prometheus.yml:/etc/prometheus/prometheus.yml \
    -v /mnt/md1/Data/prometheus/data:/prometheus:z \
    prom/prometheus
