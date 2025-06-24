#!/bin/bash

read -p "Enter a file name (without any extension):" filename

timestamps=$(date +%Y-%m-%d_%H-%M-%S)

filename_lower=$(echo ${filename} | tr 'A-Z' 'a-z')

echo "${filename_lower}${timestamps}.txt"
