sudo docker run -dt \
  -p 7700:3000 \
  --name=grafana \
  --link prometheus \
  -e "GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-simple-json-datasource" \
  grafana/grafana-oss
