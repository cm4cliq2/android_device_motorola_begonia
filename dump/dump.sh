#!/bin/bash

export PATH=../../../../prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin:$PATH

arm-eabi-nm -gsDC --format=bsd ${1} > ${1}.txt

