#!/bin/bash

rm -rf ./bin/*

cd "./src/github.com/rsmaxwell/example-c"

go install ./...
