#! /bin/bash
OLD_PATH=$PATH
PATH="/usr/local/cuda-11.7/bin:$PATH"  # CUDA 11.7

if [ "$LD_LIBRARY_PATH" != "" ]
then
    OLD_LD_LIBRARY_PATH=$LD_LIBRARY_PATH
    LD_LIBRARY_PATH="/usr/local/cuda-11.7/lib64:$LD_LIBRARY_PATH"
fi