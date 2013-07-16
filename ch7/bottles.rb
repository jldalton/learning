#!/usr/bin/env ruby

# Prints the lyrics to 99 Bottles of Beer on the Wall

def get_desc(bottles) 
	if bottles == 1
		plural = ''
	else
		plural = 's'
	end

	if bottles != 0
		desc = %Q<#{bottles} bottle#{plural}>
	else 
		desc = 'no more bottles'
    end

	return desc
end

bottles = 99

while bottles >= 0

	desc = get_desc(bottles)

	puts %Q<#{desc} of beer on the wall, #{desc} of beer.>.capitalize 

	bottles = bottles - 1

	desc = get_desc(bottles)

	if (bottles >= 0)
		puts %Q<Take one down and pass it around, #{desc} of beer on the wall.>
    else
    	puts %Q<Go to the store and buy some more, 99 bottles of beer on the wall.> 
    end

    puts

end