[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/cosmo)](https://artifacthub.io/packages/search?repo=cosmo)

# charts
helm chart repository for [COSMO](https://github.com/cosmo-workspace/cosmo/tree/main/charts)

For general installation instructions, see [GETTING-STARTED.md](https://github.com/cosmo-workspace/cosmo/blob/main/docs/GETTING-STARTED.md).

## Add repository

```sh
helm repo add cosmo https://cosmo-workspace.github.io/charts
```

## Install

### COSMO Controller Manager

Example

```sh
helm upgrade --install -n cosmo-system --create-namespace cosmo-controller-manager cosmo/cosmo-controller-manager
```

See [cosmo-controller-manager](https://github.com/cosmo-workspace/cosmo/tree/main/charts/cosmo-controller-manager) for more options

### COSMO Dashboard

Example

```sh
helm upgrade --install -n cosmo-system cosmo-dashboard cosmo/cosmo-dashboard --set service.type=LoadBalancer
```

See [cosmo-dashboard](https://github.com/cosmo-workspace/cosmo/tree/main/charts/cosmo-dashboard) for more opitons
