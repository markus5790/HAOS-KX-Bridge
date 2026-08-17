#!/usr/bin/env bash
set -e
mkdir -p /data/kx-bridge/config /data/kx-bridge/data
if [ -d /app/config ] && [ ! -L /app/config ]; then
  cp -a /app/config/. /data/kx-bridge/config/ 2>/dev/null || true
  rm -rf /app/config
fi
if [ -d /app/data ] && [ ! -L /app/data ]; then
  cp -a /app/data/. /data/kx-bridge/data/ 2>/dev/null || true
  rm -rf /app/data
fi
ln -sfn /data/kx-bridge/config /app/config
ln -sfn /data/kx-bridge/data /app/data
export KX_DATA_DIR=/app/data
export KX_IN_DOCKER=1
cd /app
exec python kobrax_moonraker_bridge.py
