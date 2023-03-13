[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/cosmo)](https://artifacthub.io/packages/search?repo=cosmo)

# All-in-one code-server image for cosmo development
helm chart for [code-server image for cosmo development](https://github.com/cosmo-workspace/cosmo-dev)

## Install options

Example

```sh
helm upgrade --install -n cosmo-dev --create-namespace code-server cosmo/dev-code-server
```

See options in [`values.yaml`](https://github.com/cosmo-workspace/cosmo/blob/main/charts/dev-code-server/values.yaml)
