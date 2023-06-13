#!/bin/bash

path=egs/ec2work/train
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio /home/ubuntu/datasets/valentini/noisy > $path/noisy.json
python3 -m denoiser.audio /home/ubuntu/datasets/valentini/clean > $path/clean.json
