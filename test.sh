#!/bin/sh
set -e
expected="succeeded!"
actual=`nc -v localhost 5601`
echo "Expecting: $expected"
echo "Server says: $actual"
if [ "$expected" != "$actual" ]; then
  echo "Test failed"
  exit 1
else
  echo "Test passed"
  exit 0
fi