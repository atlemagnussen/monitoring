
#!/usr/bin/env bash

docker container rm grafana-atle

docker run --user $(id -u):$(id -g) \
    --name grafana-atle \
    --volume "/mnt/md1/Data/grafana/data:/var/lib/grafana" \
    -p 3000:3000 -d grafana/grafana-oss:8.5.5
