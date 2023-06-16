#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
# authors: adiyoss and adefossez

path=egs/whitenoise/train
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio dataset/whitenoise16/noisy_train > $path/noisy.json
python3 -m denoiser.audio dataset/whitenoise16/clean_train > $path/clean.json


path=egs/whitenoise/valid
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio dataset/whitenoise16/noisy_valid > $path/noisy.json
python3 -m denoiser.audio dataset/whitenoise16/clean_valid > $path/clean.json


path=egs/whitenoise/test
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio dataset/whitenoise16/noisy_test > $path/noisy.json
python3 -m denoiser.audio dataset/whitenoise16/clean_test > $path/clean.json
