echo RUNNING WITH SYMBOL MAP OFF
mkdir -p build;
cd build;
cmake -DUSE_SYMBOL_MAP=OFF .. >/dev/null 2>&1
make >/dev/null 2>&1
./main >/dev/null

if [ $? -eq 0 ]; then
    echo PROGRAM EXITED SUCCESSFULLY
else
    echo PROGRAM FAILED
fi

echo RUNNING WITH SYMBOL MAP ON
cmake -DUSE_SYMBOL_MAP=ON .. >/dev/null 2>&1
make >/dev/null 2>&1
./main >/dev/null

if [ $? -eq 0 ]; then
    echo PROGRAM EXITED SUCCESSFULLY
else
    echo PROGRAM FAILED
fi
