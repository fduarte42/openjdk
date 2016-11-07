#!/bin/sh

killall -SIGHUP java 1>/dev/null 2>&1
killall -SIGHUP nc 1>/dev/null 2>&1

exit 0