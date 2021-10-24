[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/cosmo)](https://artifacthub.io/packages/search?repo=cosmo)

# charts
helm chart repository for [COSMO](https://github.com/cosmo-workspace/cosmo)

For general installation instructions, see [GETTING-STARTED.md](https://github.com/cosmo-workspace/cosmo/blob/main/docs/GETTING-STARTED.md).

## Add repository

```sh
helm repo add cosmo https://cosmo-workspace.github.io/charts
```

## Install options

### COSMO Controller Manager

Example

```sh
helm upgrade --install -n cosmo-system --create-namespace cosmo-controller-manager cosmo/cosmo-controller-manager --set logLevel=debug
```

| Option | Avairable values (default) | Description |
|:-------|:----------------|:------------|
| logLevel | ["info", "debug", 0..2 ] (info) | Loglevel for zap logger |
| enableCertManager | [true, false] (true) | Use cert-manager to gen cert for Admission Webhook. Or use helm inner function |

See detail in [`values.yaml`](https://github.com/cosmo-workspace/charts/blob/main/charts/cosmo-controller-manager/values.yaml)

### COSMO Dashboard

Example

```sh
helm upgrade --install -n cosmo-system cosmo-dashboard cosmo/cosmo-dashboard --set service.type=LoadBalancer
```

| Option | Avairable values (default) | Description |
|:-------|:----------------|:------------|
| maxMinutes | MINUTES_NUMBER (180) | Session lifetime minutes until expiration. default 3 hours. |
| service.type | ["ClutserIP", "NodePort", "LoadBalancer"] (ClusterIP) | Service type of Dashboard |
| service.port | SERVICE_PORT_NUMBER (8443) | Service port of Dashboard |
| ingress.enabled | [true, false] (false) | Enable Ingress. See [`values.yaml`](https://github.com/cosmo-workspace/cosmo/blob/main/charts/stable/cosmo-dashboard/values.yaml) to other ingress configurations |
| logLevel | ["info", "debug", 2(DEBUG_ALL) ] (info) | Loglevel for zap logger |
| cert.enableCertManager | [true, false] (true) | Use cert-manager to gen cert. or you prepare TLS secret before install |
| cert.dnsName | HOSTNAME (None) | cert-manager certificate DNS name in addition to `cosmo-dashboard.{{.Release.Namespace}}.svc` |
| cert.secretName | SecretName (dashboard-server-cert) | TLS secret name for Dashboard |
| insecure | [true, false] (false) | Use http server not https |

See detail in [`values.yaml`](https://github.com/cosmo-workspace/charts/blob/main/charts/cosmo-dashboard/values.yaml)
