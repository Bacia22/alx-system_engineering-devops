#!/usr/bin/env ruby
# This ruby script use regex to match only capital letters
puts ARGV[0].scan(/[A-Z]/).join
