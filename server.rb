#server sends client file over socket
require 'socket'

server = TCPServer.open(9001)

loop {
  	Thread.start(server.accept) do |client|
	    #client.puts(Time.now.ctime)
	    # set path file yang akan dikirim
		file = open('/home/yuripertamax/Music/animal.mp3', "rb")
		fileContent = file.read
		client.puts(fileContent)
		client.close
end

}