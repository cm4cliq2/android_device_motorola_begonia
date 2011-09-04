#!/bin/bash

export PATH=../../../../prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin:$PATH

arm-eabi-strings ${1} > ${1}.strings.txt

