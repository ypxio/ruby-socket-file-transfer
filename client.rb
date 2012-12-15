#client receive file from server
require 'socket'

host = '127.0.0.1'
port = 6000
sock = TCPSocket.open(host, port)

data = sock.read
# file destinasi dari server
destFile = File.open('/home/yuripertamax/Music/output/result.mp3', 'wb')
destFile.print data
destFile.close