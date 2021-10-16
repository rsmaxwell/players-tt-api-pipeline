#!/bin/bash

export GOPATH="$(pwd)"

echo "build.sh: hello"
echo "    pwd=${PWD}"
echo "    GOROOT=$(go env GOROOT)"
echo "    GOPATH=$(go env GOPATH)"
ls -al 

go install ./...
