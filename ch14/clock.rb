#!/usr/bin/env ruby

def ordinary_hour(real_hour)
    # convert 24-hour hour to ordinary hour
    real_hour > 12 ? real_hour - 12 : real_hour == 0 ? 12 : real_hour
end

def chime(&block)
    hour = ordinary_hour(Time.new.hour)
    hour.times do 
        block.call
    end
end

chime do
    puts "dong"
end

chime do
    a = 0
    puts "a=" + ordinary_hour(a).to_s
    a += 1
end