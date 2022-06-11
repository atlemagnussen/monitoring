# monitoring

testing monitoring with prometheus

docker run -d -p 3000:3000 --name grafana grafana/grafana-oss

## node exporter

https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz

## "prod"

### server 192.168.1.3

./run-prometheus.sh
./run-grafana.sh

### clients

- run [node_exporter](https://github.com/prometheus/node_exporter) on *nix
- run [windows_exporter](https://github.com/prometheus-community/windows_exporter) on windows_exporter, see `windows-exporter.ps1`

see `prometheus.yml` for config