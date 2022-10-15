#!/bin/bash

for m in $(cat plasma.list); do
    echo "Update $m"
    pushd $m &>/dev/null
    updpkgsums
    popd &>/dev/null
done
