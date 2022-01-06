sudo docker run -dt -p 7791:9100 \
  --name node_exporter \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host
