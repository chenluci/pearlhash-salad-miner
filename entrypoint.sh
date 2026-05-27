#!/usr/bin/env bash
set -euo pipefail

if [ -z "${PEARL_ADDRESS:-}" ]; then
  echo "ERROR: PEARL_ADDRESS is required, example: prl1..."
  exit 1
fi

POOL_HOST="${POOL_HOST:-129.226.55.135:9000}"
WORKER_NAME="${WORKER_NAME:-${SALAD_MACHINE_ID:-salad-worker}}"

echo "Starting PearlHash miner"
echo "Pool: ${POOL_HOST}"
echo "Worker: ${WORKER_NAME}"
echo "Wallet: ${PEARL_ADDRESS}"

exec /usr/local/bin/pearl-miner \
  --host "${POOL_HOST}" \
  --user "${PEARL_ADDRESS}" \
  --worker "${WORKER_NAME}"
