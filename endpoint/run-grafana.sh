
#!/usr/bin/env bash

docker run --user $(id -u):$(id -g) -d --volume "/mnt/md1/Data/grafana/data:/var/lib/grafana" -p 3000:3000 grafana/grafana-oss
