#!/usr/bin/env bash
# set -e
function read_file() {
  echo $0
  filename="$(pwd)/demo2.sh"
  while read file_line; do
    content="$file_line"
    debug_secret="${content/*AppDebugSecret:/}"
    # echo $debug_secret
    if [ "$content" != "$debug_secret" ] ; then
      debug_secret="$(echo $debug_secret|grep -o "[0-9]\+")"
      if [[ $debug_secret ]]; then
        echo $debug_secret
      fi
    fi
  done <$filename
}
