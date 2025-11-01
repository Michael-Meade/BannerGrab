# Bannergrab

Grabs the banner of services like SSH, FTP and HTTP.

## Installation

```bash
gem install BannerGrab
```

## Usage

```ruby
require_relative "lib/bannergrab"

bg = Bannergrab::TCP.new("bleepingcomputer.com", "443")
puts "VIEW HEADERS: "
bg.view_headers
puts "HTTP:"
bg.http

puts "GRAB BANNER:"
bg2 = Bannergrab::TCP.new("167.71.175.139", "22")
bg2.grab_banner

```

```ruby
require 'bannergrab'
bg = Bannergrab::TCP.new("bleepingcomputer.com", "443")
puts "VIEW HEADERS: "
bg.view_headers
puts "HTTP:"
bg.http
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Michael-Meade/BannerGrab/.
