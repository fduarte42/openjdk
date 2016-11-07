#!/bin/sh

STEP="run"
while true; do
    case $STEP in
        "run")
            ant run || if [ $? -eq 1 ]; then
                STEP="error"
            fi
            ;;
        "error")
            {
                echo -ne "HTTP/1.0 200 OK\r\n\r\n"
                echo "Build failed. See log for details."
            } | nc -l -p 80 > /dev/null || if [ $? -eq 129 ]; then
               STEP="run"
            fi
            ;;
        *)
            echo "unknown step $STEP"
            ;;
    esac
done


