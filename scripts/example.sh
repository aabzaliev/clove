#!/usr/bin/env bash

python -m training \
  --report-to tensorboard \
  --train-data laion \
  --warmup 2000 \
  --batch-size 1024 \
  --lr 1e-4 \
  --wd 0.1 \
  --epochs 32 \
  --workers 12 \
  --model ViT-B-32 \
  --pretrained-image \
  --lock-text \
  --lock-text-freeze-layer-norm \
  --resume "$LOG_DIR/name/checkpoints/epoch_9.pt"
