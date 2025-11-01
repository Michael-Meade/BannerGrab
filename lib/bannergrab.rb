# frozen_string_literal: true
require 'net/http'
require 'uri'
require "socket"
require_relative "bannergrab/version"
module Bannergrab
  class Control
    def initialize(ip, port)
      @ip = ip
      @port = port
    end
  end
  class TCP < Control
    def grab_banner
      begin
        puts TCPSocket.new(@ip, @port).recv(1024)
      rescue => e
        puts "ERROR OCCURRED\n#{e}"
      end
    end
    def view_headers
      unless @ip.match?("https://")
        @ip = "https://#{@ip}"
      end
      uri = URI(@ip)
      response = Net::HTTP.get_response(uri)
      response.header.each_header { |h| puts "#{h}: #{response[h]}" }
    end
    def http
      cmd = `curl -s -I #{@ip.gsub('https://', '')}`
      # makes sure the Server header is present
      if cmd.match?("Server")
        # extracts the server header
        version = cmd.split('Server: ')[1].split("\n")[0].strip
        puts version
      else
        puts "No Server header found..."
      end
    end
  end
end
