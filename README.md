# PearlHash Miner for Salad

Docker image for running the PearlHash Pearl miner on Salad Container Engine.

## Required Salad Environment Variables

```text
PEARL_ADDRESS=prl1your_wallet_address_here
POOL_HOST=129.226.55.135:9000
WORKER_NAME=salad-4090-01
```

Use `129.226.55.135:9000` for the Asia/China PearlHash pool. Use `84.32.220.219:9000` for Europe/US machines.

## Cheapest First Salad Settings

```text
Replicas: 1
GPU: RTX 4090
CPU: 4 vCPU
Memory: 16 GB
Gateway: Off
Health check: Off
Restart policy: Always
```

## Publish to GHCR

1. Log in to GitHub CLI:

```bash
gh auth login
```

2. Create and push a public GitHub repo:

```bash
cd /Users/chen/.openclaw/workspace/deploy/pearlhash-salad-miner
git init
git add .
git commit -m "Add PearlHash Salad miner"
gh repo create pearlhash-salad-miner --public --source=. --remote=origin --push
```

3. Wait for GitHub Actions to finish. The image will be:

```text
ghcr.io/<your-github-username>/pearlhash-salad-miner:latest
```

Make the GitHub package public if Salad cannot pull it.

## Check Mining

After the Salad deployment starts, open:

```text
https://pearlhash.xyz/#lookup
```

Search your `prl1...` address and verify worker hashrate and unpaid balance.
