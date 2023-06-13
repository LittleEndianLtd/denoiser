#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
# authors: adiyoss and adefossez

path=egs/debug2/tr
if [[ ! -e $path ]]; then
    mkdir -p $path
fi
python3 -m denoiser.audio /home/danijel/work/datasets/valentini/noisy_28_100 > $path/noisy.json
python3 -m denoiser.audio /home/danijel/work/datasets/valentini/clean_28_100 > $path/clean.json
