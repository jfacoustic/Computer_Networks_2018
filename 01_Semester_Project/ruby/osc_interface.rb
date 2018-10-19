#!/usr/bin/env ruby
# encoding: ASCII

require 'socket'

class OSC_Interface
	def initialize(ip, port)
		@ip = ip
		@port = port
		@sock = UDPSocket.new
		@sock.connect(@ip, @port)
	end
	
	def send_message(message, ptypes, *params)
		sm = message + "," 
		@sock.send(message, 0)
		return @sock.recv(256)
	end

end

o = OSC_Interface.new("192.168.1.1", 10024)
print(o.send_message("/xinfo", ""))

