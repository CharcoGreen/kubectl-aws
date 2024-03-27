# TODO: Add the kubectl version as a build argument
# TODO: Add the aws-cli version as a build argument
FROM alpine:3.19.1

LABEL MAINTAINER="Daniel González Cruz <dani.flaco0@gmail.com>"

# Install dependencies and clean up
RUN apk add --no-cache aws-cli \
    curl \
    bash \
    git \
    && curl --silent -L https://storage.googleapis.com/kubernetes-release/release/$(curl -Ls https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && apk --no-cache del curl \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/*

#COPY config/aws-cli-credentials /root/.aws/credentials 
#COPY config/aws-kube-config /root/.kube/config
COPY config/alias.sh /etc/profile.d/alias.sh

RUN chmod +x /etc/profile.d/alias.sh \
    && echo "source /etc/profile.d/alias.sh" >> /root/.bashrc