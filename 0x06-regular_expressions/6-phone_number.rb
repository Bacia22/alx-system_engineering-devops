#!/usr/bin/env ruby
# This ruby script matches only ten phone number without other character
puts ARGV[0].scan(/^\d{10}$/).join
