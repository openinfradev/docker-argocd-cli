FROM alpine:3.15

ARG VERSION=v2.2.5

RUN mkdir /workspace && \
  curl -sSL -o /workspace/argocd https://github.com/argoproj/argo-cd/releases/download/$VERSION/argocd-linux-amd64 && \
  chmod +x /workspace/argocd

WORKDIR /workspace
