# kubectl AWS EKS
## Description

Minimal Container image to use kubectl in EKS. This container have kubectl and AWS cli, it enough to work with kubernetes API exposes in EKS. 

## TL;DR

```bash
docker run --name kubectl-aws-check --rm  -v ${HOME}/.aws/credentials:/root/.aws/credentials  -v $(pwd)/config/aws-kube-config.yaml:/root/.kube/config kubectl-aws:0.0.1 aws --version
docker run --name kubectl-aws-check --rm  -v ${HOME}/.aws/credentials:/root/.aws/credentials  -v $(pwd)/config/aws-kube-config.yaml:/root/.kube/config kubectl-aws:0.0.1 kubectl version
```

## Requiriments

- Docker / Podman installed
- AWS credentials file

## HowTo

```bash
./run.sh
```

## Special Configs
### Alias