#!/usr/bin/env ruby

puts "What's up?"

reply = gets.chomp

# with %Q you could delimit strings by a single character or pairs of characters for {[(<>)]}
puts %Q<WHADDYA MEAN "#{reply}"?!? YOU'RE FIRED!!>

