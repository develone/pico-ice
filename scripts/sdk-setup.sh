!/bin/bash 
rm -rf pico-sdk pico-ice-sdk
 ln -sf ~/sdk/pico-sdk pico-sdk
 ln -sf ~/sdk/pico-ice-sdk pico-ice-sdk
 
 mkdir build
 cd build/
 cmake ..
 make