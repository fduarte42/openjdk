#!/bin/sh

ant clean
ant compile
ant dist
exec ant run