#!/usr/bin/env bash

# if [[ -e $1 && -f $1]] ; then
#   echo "$1 是文件"
# fi

if [[ -e $1 && -f $1 ]]; then
  echo "$1 是文件"
else
  echo "$1 不是文件"
fi
