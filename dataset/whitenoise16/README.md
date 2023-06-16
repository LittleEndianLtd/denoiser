How was this dataset generated?

Clean files
- Copy some clean files from the Valentini set: train, valid, test.
- Convert those to 16 kHz:
  - Step into the directory and do:
  `for file in *.wav; do sox $file 16khz_$file rate 16k; done`
  - Repeat for all 3 dirs

Whitenoisy files
- Generated some noise using SoX:
  `sox -n whitenoise.wav synth 10 whitenoise rate 16k`
- Attenuate this noise by some dB:
  `sox whitenoise.wav whitenoise_attenuated.wav gain -18`
- Mix the noise into clean files:
  - cd into dataset root dir
    `./mixnoise_all.sh clean_test /home/danijel/git/denoiser/dataset/whitenoise16/noisy_test`
    `./mixnoise_all.sh clean_valid /home/danijel/git/denoiser/dataset/whitenoise16/noisy_valid`
    `./mixnoise_all.sh clean_train /home/danijel/git/denoiser/dataset/whitenoise16/noisy_train`

Now you should be ready to run the trainining.