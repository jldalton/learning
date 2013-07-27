#!/usr/bin/env ruby

# Table of Contents Revisited
# display a table of contents so that it looks like this
#
#
#                    Table of contents
#
# Chapter 1:    Getting Started                     page  1
# Chapter 2:    Numbers                             page  9
# Chapter 3:    Letters                             page 13


toc_lines = [ ['Table of Contents'], 
            [''], 
            [['Chapter', '1:'], ['Getting Started'], ['page','1'] ],
            [['Chapter', '2:'], ['Numbers'], ['page','9'] ],
            [['Chapter', '3:'], ['Letters'], ['page','13'] ] ]

width = 60
toc_lines.each do |line|
    if line.length == 1 
        puts line[0].center(width)
    else
        line.each do |column|
            if column.length == 2
                print column[0] + ' ' + (column[1].rjust(2)).ljust(width/3)
            else
                print column[0].ljust(width*2/3)
            end
        end
        puts
    end
end