#!/usr/bin/env python

from thrift.transport import TSocket
from thrift.transport import TTransport
from thrift.protocol import TBinaryProtocol
from thrift.server import TServer

from pygen.ping import PingService


class PingServiceHandler:
    def __init__(self):
        self.log = {}

    def ping(self):
        return 'pong'

    def say(self, msg):
        print(msg)


handler = PingServiceHandler()
processor = PingService.Processor(handler)
transport = TSocket.TServerSocket(port=9090)
tfactory = TTransport.TBufferedTransportFactory()
pfactory = TBinaryProtocol.TBinaryProtocolFactory()

server = TServer.TSimpleServer(processor, transport, tfactory, pfactory)

print('Starting python server...')
server.serve()
print('done!')