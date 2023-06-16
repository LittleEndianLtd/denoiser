#!/bin/bash

# $1 source dir
# $2 target dir
# Example to add noise to clean_valid files and copy to noisy_valid:
# ./mixnoise_all.sh clean_valid /home/danijel/git/denoiser/dataset/whitenoise16/noisy_valid
# Not good not terrible.

cd $1
for filename in *.wav; do
    [ -e "$filename" ] || continue
    echo $filename
    ../mixnoise.sh $filename ../whitenoise.wav $2
done
