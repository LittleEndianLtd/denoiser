#!/bin/bash

path=egs/ec2work/train
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio /home/ubuntu/datasets/valentini/noisy_trainset_28spk_wav > $path/noisy.json
python3 -m denoiser.audio /home/ubuntu/datasets/valentini/clean_trainset_28spk_wav > $path/clean.json
