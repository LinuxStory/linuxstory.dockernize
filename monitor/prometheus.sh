sudo docker run --name prometheus -dt \
    --link cadvisor \
    --link node_exporter \
    -p 7790:9090 \
    -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus
