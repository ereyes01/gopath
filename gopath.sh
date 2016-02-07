#!/bin/bash

gopath()
{
    dir=$(readlink -m $1)

    [[ -d "$dir" ]] || return 1

    export GOPATH=$dir
    export PATH=$GOPATH/bin:$PATH
    export GO15VENDOREXPERIMENT=1
}
