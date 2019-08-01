#!/usr/bin/env sh
VER=v2.14.3
DIR=~/Downloads
MIRROR=https://storage.googleapis.com/kubernetes-helm


dl()
{
    OS=$1
    ARCH=$2
    ARCHIVE_TYPE=$3
    PLATFORM=${OS}-${ARCH}
    FILE=helm-$VER-${PLATFORM}.${ARCHIVE_TYPE}.sha256
    URL=$MIRROR/$FILE
    printf "    # %s\n"  $URL
    printf "    %s: sha256:%s\n" $PLATFORM `curl -SsL $URL`
}

printf "  %s:\n" $VER
dl darwin amd64 tar.gz
dl linux amd64 tar.gz
dl linux arm tar.gz
dl linux arm64 tar.gz
dl linux 386 tar.gz
dl linux ppc64le tar.gz
dl linux s390x tar.gz
dl windows amd64 zip
