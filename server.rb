#server sends client file over socket
require 'socket'
server = TCPServer.open(9999)

loop {
  	Thread.start(server.accept) do |client|
	    #client.puts(Time.now.ctime)
		file = open('/path/to/source/files', "rb")
		fileContent = file.read
		client.puts(fileContent)
		client.close
end

}