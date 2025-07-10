#!/bin/bash

num=0
while true; do
  num=$((num + 1))
  ./gen > in
  ./std < in > ans
  ./sol < in > out
  diff out ans > /dev/null
  if [ $? -ne 0 ]; then
    echo "Failure #$num"
    diff out ans
    break
  fi
  echo "Success #$num"
done
