# kubectl AWS EKS
## Description

Minimal Container image to use kubectl in EKS. This container have kubectl and AWS cli, it enough to work with kubernetes API exposes in EKS. 

## TL;DR

```bash
docker run --name kubectl-aws --rm  flaco0/kubectl-aws:latest kubectl version
```

```bash
docker run --name kubectl-aws --rm  -v ${HOME}/.aws:/root/.aws  -v ${HOME}/.kube/config:/root/.kube/config  flaco0/kubectl-aws:latest kubectl version
```

## Requiriments

- Docker / Podman installed

## APP Versions

    AWS-CLI: Last
    KUBECTL: Last

TODO: Add the kubectl version as a build argument  
TODO: Add the aws-cli version as a build argument  
TODO: Use two FROM in Dockerfile
TODO: Add terraform environment vars

## HowTo

local use

```bash
./run.sh
```

## Special Configs
### Alias

    kubeclear: unset the kubectl context



## Install  terraform

```bash
wget https://releases.hashicorp.com/terraform/1.9.8/terraform_1.9.8_linux_amd64.zip
unzip terraform_1.9.8_linux_amd64.zip && rm terraform_1.9.8_linux_amd64.zip
mv terraform /usr/bin/terraform
```