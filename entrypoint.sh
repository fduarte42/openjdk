#!/bin/sh

if [ -f "Main.java" ]; then
    echo "compiling Main.java"
    $BUILD_CMD
    if [ -f "Main.class" ]; then
        echo "executing Main"
        exec $EXEC_CMD
    fi
else
    echo "no Main class found"
    exit 1
fi