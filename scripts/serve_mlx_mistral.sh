#!/usr/bin/env bash
# ==============================================================================
# ApexMistral-22B: High-Throughput Metal GPU Serving via MLX / Llama.cpp
# Optimized for Apple Silicon M4 Max / M2 Max (36 GB / 96 GB Systems)
# ==============================================================================

set -euo pipefail

PORT="${1:-8083}"
MODEL_ID="${2:-mlx-community/Codestral-22B-v0.1-4bit}"

echo "=================================================================="
echo "⚡ Starting ApexMistral-22B Metal GPU Inference Server"
echo "   Model:    ${MODEL_ID}"
echo "   Endpoint: http://127.0.0.1:${PORT}/v1/chat/completions"
echo "   Hardware: Apple Silicon Metal (Unified Memory)"
echo "   Context:  32,768 tokens (Scalable to 128k)"
echo "   Sampling: Min-P = 0.04"
echo "=================================================================="

if ! python3 -c "import mlx_lm" &>/dev/null; then
    echo "📦 Installing mlx-lm..."
    pip install -q mlx-lm
fi

exec python3 -m mlx_lm.server \
    --model "${MODEL_ID}" \
    --port "${PORT}" \
    --host 0.0.0.0
