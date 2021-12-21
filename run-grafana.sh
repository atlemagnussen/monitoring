
#!/usr/bin/env bash

docker container rm grafana-atle

docker run --user $(id -u):$(id -g) \
    --name grafana-atle \
    --volume "/mnt/md1/Data/grafana/data:/var/lib/grafana" \
    -e "GF_INSTALL_PLUGINS=grafana-azure-monitor-datasource" \
    -p 3000:3000 -d grafana/grafana-oss
