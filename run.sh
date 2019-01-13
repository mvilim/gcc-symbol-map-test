docker build -t mvilim/test_symbol_export7 -f Dockerfile_gcc7 .
docker build -t mvilim/test_symbol_export8 -f Dockerfile_gcc8 .
echo RUNNING GCC 7 TEST
docker run mvilim/test_symbol_export7 /bin/bash -c "./test_compiler.sh"

echo ""
echo RUNNING GCC 8 TEST
docker run mvilim/test_symbol_export8 /bin/bash -c "./test_compiler.sh"
