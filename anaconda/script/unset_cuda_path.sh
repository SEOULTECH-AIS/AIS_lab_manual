#! /bin/bash
PATH=$OLD_PATH
unset OLD_PATH

if [ "$OLD_LD_LIBRARY_PATH" != "" ]
then
    LD_LIBRARY_PATH=$OLD_LD_LIBRARY_PATH
    unset OLD_LD_LIBRARY_PATH
else
    unset LD_LIBRARY_PATH
    unset OLD_LD_LIBRARY_PATH
fi