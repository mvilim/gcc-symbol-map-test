docker build -t mvilim/test_symbol_export_arch_gcc7 -f Dockerfile_arch_gcc7 .
docker build -t mvilim/test_symbol_export_arch_gcc8 -f Dockerfile_arch_gcc8 .
docker build -t mvilim/test_symbol_export_alpine_gcc8 -f Dockerfile_alpine_gcc8 .
docker build -t mvilim/test_symbol_export_fedora_gcc8 -f Dockerfile_fedora_gcc8 .

echo RUNNING ARCH GCC 7 TEST
docker run mvilim/test_symbol_export_arch_gcc7 ./test_compiler.sh
echo ""

echo RUNNING ARCH GCC 8 TEST
docker run mvilim/test_symbol_export_arch_gcc8 ./test_compiler.sh
echo ""

echo RUNNING ALPINE GCC 8 TEST
docker run mvilim/test_symbol_export_alpine_gcc8 ./test_compiler.sh
echo ""

echo RUNNING FEDORA GCC 8 TEST
docker run mvilim/test_symbol_export_fedora_gcc8 ./test_compiler.sh
echo ""
