#!/bin/bash

GOPATH="$(pwd)"

echo "build.sh: hello"
echo "    pwd=${PWD}"
echo "    GOROOT=${GOROOT}"
echo "    GOPATH=${GOPATH}"
ls -al 

go install ./...
