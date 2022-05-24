#!/bin/bash

declare -a pkgs=("iNZightTools" "iNZightRegression" "iNZightPlots" "iNZightModules" "iNZight")

for pkg in ${pkgs[@]}
do
    cd pkgs/$pkg && git checkout feature/guinz && git pull && cd ../..
done
