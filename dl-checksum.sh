#!/usr/bin/env sh
VER=v2.7.0
MIRROR=https://storage.googleapis.com/kubernetes-helm
wget $MIRROR/helm-$VER-darwin-amd64.tar.gz
wget $MIRROR/helm-$VER-linux-amd64.tar.gz
wget $MIRROR/helm-$VER-linux-arm64.tar.gz
sha256sum helm-$VER-*.tar.gz
#shasum -a 256 helm-$VER-*.tar.gz
