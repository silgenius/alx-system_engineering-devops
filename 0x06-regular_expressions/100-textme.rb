#!/usr/bin/env ruby
from = ARGV[0].scan(/from:(\+?\d+|\w+)/).join
to = ARGV[0].scan(/to:(\+?\d+|\w+)/).join
flag = ARGV[0].scan(/flags:(-1:0:-1:-?[0-1]:-1?)/).join
puts "#{from},#{to},#{flag}"
