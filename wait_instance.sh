#!/bin/sh
set -e
STATUS=
while [ "x$STATUS" != "xready" ]
do
  STATUS=`rhoas service-registry describe | jq -c -r ".status"`
  sleep 2
done