#!/usr/bin/env ruby

class Dragon
    def initialize name
        @name = name
        @asleep = false
        @stuff_in_belly = 10
        @wakefulness = 6
        @stuff_in_intestine = 0 # He doesn't need to go.
        puts "#{@name} is born."
    end

    def name
        @name
    end

    def feed
        if full? 
            puts "#{@name} takes a few bites, but is not hungry."
        else
            puts "You feed #{@name}." 
        end
        @stuff_in_belly = 10 
        passage_of_time
    end
    
    def walk
        puts "You walk #{@name}." 
        @stuff_in_intestine = 0
        @wakefulness = @wakefulness - 1 
        passage_of_time
    end
    
    def put_to_bed
        puts "You put #{@name} to bed." 
        @asleep = true
        3.times do
            if @asleep 
                passage_of_time
            end
            if @asleep
                puts "#{@name} snores, filling the room with smoke."
            end 
        end

        if @asleep
            @asleep = false
            puts "#{@name} wakes up slowly."
        end 
    end

    def toss
        puts "You toss #{@name} up into the air."
        puts 'He giggles, which singes your eyebrows.' 
        passage_of_time
    end

    def rock
        puts "You rock #{@name} gently."
        @asleep = true
        puts 'He briefly dozes off...'
        passage_of_time
        if @asleep
            @asleep = false
            puts '...but wakes when you stop.'
        end 
    end                

    private

    def full?
        @stuff_in_belly >= 8
    end

    def hungry?
        @stuff_in_belly <= 2
    end

    def poopy? 
        @stuff_in_intestine >= 8
    end

    def passage_of_time
        if @stuff_in_belly > 0
            #  Move food from belly to intestine.
            @stuff_in_belly     = @stuff_in_belly     - 1
            @stuff_in_intestine = @stuff_in_intestine + 1
        else # Our dragon is starving! 
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!' 
            end
            puts "#{@name} is starving!  In desperation, he eats YOU!"
            exit # This quits the program. 
        end

        if @asleep
            @wakefulness = @wakefulness + 1
            if @wakefulness > 10
                @wakefulness = 10
            end
        else
            @wakefulness = @wakefulness - 1
        end

        if @wakefulness <= 0
            puts "#{@name} is exhausted!  In desperation, he kills YOU!"
            exit
        elsif @wakefulness <= 2
            puts "#{@name} is getting sleepy"
        end

        if @stuff_in_intestine >= 10 
            @stuff_in_intestine = 0
            puts "Whoops! #{@name} has an accident..."
        end

        if hungry? 
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!' 
            end
            puts "#{@name}'s stomach grumbles..." 
        end

        if poopy?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!' 
            end
            puts "#{@name} does the potty dance..." 
        end
    end 
end       

puts "What is your pet's name?"
name = gets.chomp

pet = Dragon.new name

command = nil
while true do
    print ">"
    command = gets.chomp
    if command == "quit"
        break
    elsif command == "feed" 
        pet.feed
    elsif command == "toss"
        pet.toss
    elsif command == "walk"
        pet.walk
    elsif command == "rock"
        pet.rock
    elsif (command == "bed" or command == "sleep" or command == "put_to_bed") 
        pet.put_to_bed
    elsif command == "help" or command == "?"
        puts "Commands: feed, toss, walk, rock, bed, quit"
    else
        puts "You can't do that to #{pet.name}" 
    end    
end