#!/bin/bash
rm -rf pico-ice-sdk pico-ice
 
git clone https://github.com/develone/pico-ice-sdk.git -b test-dev

git clone https://github.com/develone/pico-ice.git -b test-dev

cd pico-ice

cp -r ~/pico-ice-sdk/examples/pico_usb_uart my-new-pico-ice-firmware

cd my-new-pico-ice-firmware

rm -rf pico-ice-sdk pico-sdk

git clone https://github.com/develone/pico-ice-sdk -b test-dev
 
cd pico-ice-sdk

git submodule update --init
 
cd ../

git clone https://github.com/develone/pico-sdk.git

cd pico-sdk

git submodule update --init

 
cd ../

cp -r ~/pico-ice-sdk/examples/* .

mkdir build

cd build

cmake ..

make
 
