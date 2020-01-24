#!/bin/bash
#type in yo "pkg" name to install a package along with update and upgrade 
#options instead of typing in pkg install "pkg name"
pkg update && pkg upgrade; pkg install $1
