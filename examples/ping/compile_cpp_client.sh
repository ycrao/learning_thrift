g++ -Wall -I/usr/local/include/thrift -c cppgen/ping_constants.cpp -o constants.o
g++ -Wall -I/usr/local/include/thrift -c cppgen/ping_types.cpp -o types.o
g++ -Wall -I/usr/local/include/thrift -c cppgen/PingService.cpp -o PingService.o
g++ -g -Wall -std=c++11 -I/usr/local/include/thrift -c client.cpp -o client.o
g++ -L/usr/local/lib client.o constants.o types.o PingService.o -o client -lthrift