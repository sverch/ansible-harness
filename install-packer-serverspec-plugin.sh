#!/bin/bash

set -euo pipefail

mkdir -p go
export GOPATH=$PWD/go
go get github.com/unifio/packer-provisioner-serverspec
cp "$GOPATH/bin/packer-provisioner-serverspec" .
rm -rf go
