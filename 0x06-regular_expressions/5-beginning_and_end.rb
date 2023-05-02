#!/usr/bin/env ruby
# This ruby script use regex with match: start `h` and ends `n` and any single character in between
puts ARGV[0].scan(/^h.n$/).join
