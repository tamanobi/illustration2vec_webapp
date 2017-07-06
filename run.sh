#!/bin/bash
set -eux

cd illustration2vec
mkdir -p ./static/images
pid=$$
python app.py
