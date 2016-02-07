#!/bin/bash

gopath()
{
    dir=$(readlink -m $1)
    [[ -d "$dir" ]] || return 1

    if [[ -n "$GOPATH" ]]; then
        PATH=${PATH##$GOPATH/bin:}
    fi

    export GOPATH=$dir
    export PATH=$GOPATH/bin:$PATH
    export GO15VENDOREXPERIMENT=1
}
