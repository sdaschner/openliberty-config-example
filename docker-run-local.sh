#!/bin/bash
set -euo pipefail
cd ${0%/*}

./docker-run-config-example.sh
./docker-run-database.sh
./docker-run-monitoring.sh
