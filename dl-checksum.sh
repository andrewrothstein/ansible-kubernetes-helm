#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://get.helm.sh


dl()
{
    local ver=$1
    local os=$2
    local arch=$3
    local archive_type=$4
    local platform="${os}-${arch}"
    local file=helm-${ver}-${platform}.${archive_type}.sha256
    local url=$MIRROR/$file
    printf "    # %s\n"  $url
    printf "    %s: sha256:%s\n" $platform `curl -SsL $url`
}

dl_ver () {
    local ver=$1
    printf "  %s:\n" $ver
    dl $ver  darwin amd64 tar.gz
    dl $ver linux amd64 tar.gz
    dl $ver linux arm tar.gz
    dl $ver linux arm64 tar.gz
    dl $ver linux 386 tar.gz
    dl $ver linux ppc64le tar.gz
    dl $ver windows amd64 zip
}

dl_ver ${1:-v3.1.2}
