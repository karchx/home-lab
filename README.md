## Homelab resources

| Namespace | CPU Request/Limit | RAM Request/Limit | Propósito |
| --------- | ----------------- | ----------------- | --------- |
| de | 2 / 3 | 7Gi / 10Gi | Airflow, MinIO, Postgres |
| ds | 2 / 3 | 7Gi / 9Gi | JupyterHub, MLflow |
| se | 1.5 / 2.5 | 4Gi / 6Gi | ArgoCD, registry, tooling |
| infra | 1 / 1.5 | 3Gi / 4Gi | Ingress, cert-manager, monitoring |
