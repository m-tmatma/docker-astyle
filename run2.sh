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
    astyle -n --add-braces --style=$style "output/$style/main.c"
done

