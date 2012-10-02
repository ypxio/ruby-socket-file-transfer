#client receive file from server
require 'socket'

host = '127.0.0.1'
port = 9999
sock = TCPSocket.open(host, port)

data = sock.read
destFile = File.open('/path/to/saved/files', 'wb')
destFile.print data
destFile.close