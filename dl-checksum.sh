#!/usr/bin/env sh
VER=v2.14.1
DIR=~/Downloads
MIRROR=https://storage.googleapis.com/kubernetes-helm


dl()
{
    OS=$1
    PLATFORM=$2
    ARCHIVE_TYPE=$3
    FILE=helm-$VER-$OS-$PLATFORM.${ARCHIVE_TYPE}.sha256
    URL=$MIRROR/$FILE
    printf "# %s\n%s-%s: sha256:%s\n" $URL $OS $PLATFORM `curl -SsL $MIRROR/helm-$VER-$OS-$PLATFORM.tar.gz.sha256`
}

dl darwin amd64 tar.gz
dl linux amd64 tar.gz
dl linux arm tar.gz
dl linux arm64 tar.gz
dl linux 386 tar.gz
dl linux ppc64le tar.gz
dl linux s390x tar.gz
dl windows amd64 zip
