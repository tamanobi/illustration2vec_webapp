#!/bin/bash
set -eux

cd illustration2vec
mkdir -p ./static/images
python app.py
