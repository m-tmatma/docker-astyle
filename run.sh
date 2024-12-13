#!/bin/bash

styles=(
    "allman"
    "java"
    "kr"
    "stroustrup"
    "whitesmith"
    "vtk"
    "ratliff"
    "gnu"
    "linux"
    "horstmann"
    "1tbs"
    "google"
    "mozilla"
    "webkit"
    "pico"
    "lisp"
)

rm -rf output
for style in "${styles[@]}"; do
    mkdir -p    "output/$style"
    cp -a src/* "output/$style"
    echo "Running $style"
    docker run -v $(pwd)/output/$style:/output astyle astyle -n --style=$style "/output/main.c"
done

