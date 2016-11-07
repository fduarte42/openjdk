#!/bin/sh

ant run 1>/tmp/output.log 2>&1 && \
    echo /tmp/output.log || \
    while true; do cat /tmp/output.log; { echo -ne "HTTP/1.0 200 OK\r\n\r\n"; cat /tmp/output.log; } | nc -l -p 80; test $? -gt 128 && break; done
