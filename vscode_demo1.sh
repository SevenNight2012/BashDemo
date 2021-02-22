#!/usr/bin/env bash
# echo "hello world" \
# && sleep 3s \
# && echo "finish sleep"

# number=0
# result=$((number + 1))
# echo "$result"
# while [ $number -lt 10 ]; do
#     echo "$number"
#     number=$((number + 1))
# done

# ls .
for file in *; do
    content=$(cat "$(pwd)/$file")
    printf "%s:content is :----------------------------------------\n%s\n" "$file" "$content"
done

