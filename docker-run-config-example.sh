#!/bin/bash
set -euo pipefail

docker stop config-example || true

docker run --rm -d \
  -p 9080:9080 \
  -p 9443:9443 \
  --name config-example \
  -v /tmp/bootstrap.properties:/opt/wlp/usr/servers/defaultServer/bootstrap.properties \
  --network dkrnet \
  sdaschner/config-example:1
