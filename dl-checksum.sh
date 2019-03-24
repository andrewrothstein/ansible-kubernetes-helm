#!/usr/bin/env sh
VER=v2.13.1
DIR=~/Downloads
MIRROR=https://storage.googleapis.com/kubernetes-helm


dl()
{
    OS=$1
    PLATFORM=$2
    URL=$MIRROR/helm-$VER-$OS-$PLATFORM.tar.gz.sha256
    printf "# $URL\n"
    printf "$OS-$PLATFORM: sha256:"
    curl -SsL $MIRROR/helm-$VER-$OS-$PLATFORM.tar.gz.sha256
}

dl linux amd64
dl linux arm64
dl darwin amd64
