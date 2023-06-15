#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
# authors: adiyoss and adefossez

path=egs/debug/tr
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio dataset/debug/noisy > $path/noisy.json
python3 -m denoiser.audio dataset/debug/clean > $path/clean.json

path1=egs/debug/vl
if [[ ! -e $path1 ]]; then
    mkdir -p $path1
fi
python3 -m denoiser.audio dataset/debug/noisy_valid > $path1/noisy.json
python3 -m denoiser.audio dataset/debug/clean_valid > $path1/clean.json

path2=egs/debug/ts
if [[ ! -e $path2 ]]; then
    mkdir -p $path2
fi
python3 -m denoiser.audio dataset/debug/noisy_test > $path2/noisy.json
python3 -m denoiser.audio dataset/debug/clean_test > $path2/clean.json
