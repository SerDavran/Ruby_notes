require 'gserver'

class LogServer < GServer
	def initialize
		# TCP port 12345
		super(12345)
		puts "Puts server starts on 12345"
	end
	def serve(client)
		client.puts get_end_of_log_file
	end

private
	
	def get_end_of_log_file
		File.open("var/log/system.log") do |log|
			log.seek(-500, IO::SEEK_END)
			log.gets
			log.read
		end
	end

end

server = LogServer.new
server.start.join