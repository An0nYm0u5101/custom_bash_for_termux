#!/bin/bash
#shows you package info
#just type in yolo "package name" instead of typing 
#pkg show "pkg name"
echo "Show package info for $1"
echo
pkg show $1
