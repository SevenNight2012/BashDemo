#!/usr/bin/env bash
function hello() {
  #statements
  echo "hello function"
  echo "$0 $1 $2 $3"
  echo "function finish"
}
hello p1 p2
