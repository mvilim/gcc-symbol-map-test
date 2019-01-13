#!/bin/sh

mkdir -p build;
cd build;
cmake .. >/dev/null 2>&1
make >/dev/null 2>&1

echo RUNNING WITH SYMBOL MAP OFF
./main_off >/dev/null
if [ $? -eq 0 ]; then
    echo PROGRAM EXITED SUCCESSFULLY
else
    echo PROGRAM FAILED
fi
echo ""

./main_on >/dev/null
echo RUNNING WITH SYMBOL MAP ON

if [ $? -eq 0 ]; then
    echo PROGRAM EXITED SUCCESSFULLY
else
    echo PROGRAM FAILED
fi
echo ""
