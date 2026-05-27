FROM nvidia/cuda:12.8.1-runtime-ubuntu22.04

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates curl \
  && rm -rf /var/lib/apt/lists/*

ARG PEARL_MINER_URL=https://pearlhash.xyz/downloads/pearl-miner-v7

RUN curl -fsSL "${PEARL_MINER_URL}" \
    -o /usr/local/bin/pearl-miner \
  && chmod +x /usr/local/bin/pearl-miner

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
