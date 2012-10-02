#server sends client file over socket
require 'socket'
server = TCPServer.open(6671)

loop {
  Thread.start(server.accept) do |client|
    #client.puts(Time.now.ctime)
	file = open('/home/yuripertamax/Music/animal.mp3', "rb")
	fileContent = file.read
	client.puts(fileContent)
	client.close
end

}