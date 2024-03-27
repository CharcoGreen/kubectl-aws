# kubectl AWS EKS
## Description

Minimal Container image to use kubectl in EKS. This container have kubectl and AWS cli, it enough to work with kubernetes API exposes in EKS. 

## TL;DR

```bash
docker run --name kubectl-aws --rm  flaco0/kubectl-aws:latest kubectl version
```

```bash
docker run --name kubectl-aws --rm  -v ${HOME}/.aws/credentials:/root/.aws/credentials  -v ${HOME}/.kube/config:/root/.kube/config  flaco0/kubectl-aws:latest kubectl version
```

## Requiriments

- Docker / Podman installed
- AWS credentials file

## HowTo


local use

```bash
./run.sh
```

## Special Configs
### Alias