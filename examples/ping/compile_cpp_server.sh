#g++ -g -Wall -std=c++11 -DHAVE_INTTYPES_H -DHAVE_NETINET_IN_H -I/usr/local/include/thrift -I/usr/include/boost cppgen/*.cpp server.cpp -L/usr/local/lib -lthrift -o server
g++ -Wall -I/usr/local/include/thrift -c cppgen/PingService.cpp -o PingService.o
g++ -Wall -I/usr/local/include/thrift -c cppgen/ping_constants.cpp -o constants.o
g++ -Wall -I/usr/local/include/thrift -c cppgen/ping_types.cpp -o types.o
g++ -g -Wall -std=c++11 -I/usr/local/include/thrift -c server.cpp -o server.o
g++ -L/usr/local/lib *.o -o server -lthrift