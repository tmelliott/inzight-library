#!/bin/bash

declare -a pkgs=("iNZightTools" "iNZightPlots" "iNZight")

for pkg in ${pkgs[@]}
do
    cd pkgs/$pkg && git checkout feature/guinz && git pull && cd ../..
done
