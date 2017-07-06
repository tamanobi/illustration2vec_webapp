#!/bin/bash
set -eux

cd illustration2vec
mkdir -p ./static/images
pid=$$
echo -17 > /proc/$pid/oom_adj
python app.py
