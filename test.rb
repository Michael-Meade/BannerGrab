#require_relative "lib/bannergrab"
require 'bannergrab'
bg = Bannergrab::TCP.new("bleepingcomputer.com", "443")
puts "VIEW HEADERS: "
bg.view_headers
puts "HTTP:"
bg.http

puts "GRAB BANNER:"
bg2 = Bannergrab::TCP.new("167.71.174.138", "22")
bg2.grab_banner
