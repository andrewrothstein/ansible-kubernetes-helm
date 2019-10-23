#!/usr/bin/env sh
VER=v2.15.0
DIR=~/Downloads
MIRROR=https://storage.googleapis.com/kubernetes-helm


dl()
{
    local os=$1
    local arch=$2
    local archive_type=$3
    local platform="${os}-${arch}"
    local file=helm-${VER}-${platform}.${archive_type}.sha256
    local url=$MIRROR/$file
    printf "    # %s\n"  $url
    printf "    %s: sha256:%s\n" $platform `curl -SsL $url`
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
