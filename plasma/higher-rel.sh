#!/bin/bash

for m in $(cat plasma.list); do
    echo "Edit $m"
    pushd $m &>/dev/null
    _rel=$(cat PKGBUILD | grep pkgrel= | cut -d= -f2 | head -n1)
    if [[ $_rel == 0.* ]]; then
        _rel=${_rel#*.}
        sed -i -e "s/pkgrel=0.${_rel}/pkgrel=0.$((${_rel}+1))/" PKGBUILD
    else
        sed -i -e "s/pkgrel=${_rel}/pkgrel=$((${_rel}+1))/" PKGBUILD
    fi
    popd &>/dev/null
done
