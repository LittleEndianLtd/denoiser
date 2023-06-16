#!/bin/bash
# mix two input wavs, but length from the first file

samps=$(soxi -s $1)
sox $2 trimmed.wav trim 0 ${samps}s
sox -m $1 trimmed.wav mix_$1
rm trimmed.wav
mv mix_$1 $3/$1
