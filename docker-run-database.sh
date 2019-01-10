#!/bin/bash
set -euo pipefail

docker stop config-example-db || true

docker run --rm -d \
  -p 5432:5432 \
  --name config-example-db \
  --network dkrnet \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=postgres \
  postgres:9.5
