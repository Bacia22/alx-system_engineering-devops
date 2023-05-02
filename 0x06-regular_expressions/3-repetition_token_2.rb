#!/usr/bin/env ruby
# This Ruby script allows to use regex with token {m,n}
puts ARGV[0].scan(/hbt{1,5}n/).join
