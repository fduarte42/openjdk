#!/bin/sh

if [ -f "Main.java" ]; then
    echo "compiling Main.java"
    javac Main.java
    if [ -f "Main.class" ]; then
        echo "executing Main"
        exec java Main
    fi
else
    echo "no Main class found"
    exit 1
fi