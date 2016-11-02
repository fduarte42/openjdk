#!/bin/sh

if [ -f "./$BUILD_CMD" ]; then
    echo "compiling..."
    chmod 755 ./$BUILD_CMD
    ./$BUILD_CMD
    if [ -f "./$EXEC_CMD" ]; then
        echo "executing..."
        chmod 755 ./$EXEC_CMD
        exec ./$EXEC_CMD
    fi
else
    echo "no build command found"
    exit 1
fi