#client receive file from server
require 'socket'

host = '127.0.0.1'
port = 6688
sock = TCPSocket.open(host, port)

	data = sock.read
	destFile = File.open('/home/yuripertamax/Public/pemjar2.txt', 'wb')
	destFile.print data
	destFile.close