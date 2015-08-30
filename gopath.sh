#!/bin/bash

gopath()
{
    GOPATH=$(readlink -m $1)

    [[ -d $GOPATH ]] || return 1

    export PATH=$GOPATH/bin:$PATH
    export GOPATH
    export GO15VENDOREXPERIMENT=1
}
