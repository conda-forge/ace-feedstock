# Test linking against the ACE library
${CXX} -I$PREFIX/include -c -o ace_example.o ace_example.cpp

# Deal with different linker flags
if [ $(uname -s) == 'Darwin' ]; then
  ${CXX} -L$PREFIX/lib -Wl,-rpath,$PREFIX/lib -lACE -o ace_example ace_example.o
else
  ${CXX} -L$PREFIX/lib -lACE -o ace_example ace_example.o
fi

./ace_example
