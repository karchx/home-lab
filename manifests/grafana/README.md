# Grafana

## Install  grafana via helm chart

```bash
helm upgrade --install grafana grafana/grafana -n monitoring -f values.yaml
```

## Get notes about grafana

```bash
helm get notes grafana -n monitoring
```
