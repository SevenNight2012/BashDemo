#!/usr/bin/env bash
export aa="i am in demo2"
# ./demo1.sh
# echo "print result in demo2>>>"$result
# ${1:="default_value"}
filename=${1:-"filename missing."}
echo $#
echo $filename
key_name="AppDebugSecret:"
gradle_print="AppDebugSecret:179306496"
debug_secret=${gradle_print:${#key_name}}
echo $debug_secret
