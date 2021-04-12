# multi-gatekeeper
[![Artifact HUB](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/dteam-helm-charts)](https://artifacthub.io/packages/search?repo=dteam-helm-charts)

[keycloak-gatekeeper](https://hub.docker.com/r/keycloak/keycloak-gatekeeper) is an application that can be used to easily enable authentication flows via OIDC for a kubernetes cluster.

## Installation

```bash
helm repo add dteam https://dteamdev.github.io/charts
helm install dteam/multi-gatekeeper -n kube-system -f your.values.yaml
```

## Introduction

This chart deploys a multiple instances of keycloak gatekeeper authentication server

## Configuration options

There is defined only basic options. For all options look at `values.yaml` file

| Parameter                         | Description                                                                       | Default       |
| ----------------------------------| ----------------------------------------------------------------------------------| :-------------------------------: |
| `ingress.enabled`                 | Enable ingress                                                                    | `false`                           |
| `ingress.annotations`             | Specify the ingress annotations                                                   | `{}`                              |
| `discoveryUrl`                    | Discovery URL of your OIDC server                                                 | `""`                              |
| `clientId`                        | Client ID for your OIDC server (for all proxies)                                  | `http://example.com:6443`         |
| `clientSecret`                    | Client secret for your OIDC server (for all proxies)                              | `http://example.com/auth`         |
| `encryptionKey`                   | cookie encryption key (for all proxies, sets randomly if unspecified)             | `http://example.com/token`        |
| `enableRefreshTokens`             | Enable refresh tokens                                                             | `http://example.com/userinfo`     |
| `proxies`                         | Proxies array                                                                     | `[]"`                             |
| `proxies[0].name`                 | Proxy name                                                                        | `""`                              |
| `proxies[0].namespace`            | Proxy namespace                                                                   | `""`                              |
| `proxies[0].hosts`                | List of proxies hosts for ingress                                                 | `[]`                              |
| `proxies[0].tls`                  | Proxies tls config for ingress                                                    | `[]`                              |
| `proxies[0].tls[0].secretName`    | Tls secret name                                                                   | `""`                              |
| `proxies[0].tls[0].hosts`         | Tls hosts                                                                         | `""`                              |
| `proxies[0].target`               | Target application url (Example: https://kubernetes-dahsboard)                    | `""`                              |
| `proxies[0].resources`            | Resources spec. Look in `values.yaml` for a link to examples                      | `""`                              |
| `proxies[0].clientId`             | Client ID for your OIDC server (for this proxy, sets randomly if unspecified)     | `""`                              |
| `proxies[0].clientSecret`         | Client secret for your OIDC server (for this proxy, set randomly if unspecified)  | `""`                              |
| `proxies[0].encryptionKey`        | cookie encryption key (for this proxy, sets randomly if unspecified)              | `""`                              |