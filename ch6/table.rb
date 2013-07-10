#!/usr/bin/env ruby

# display a table of contents so that it looks like this
#
#
#                    Table of contents
#
# Chapter 1:    Getting Started                     page  1
# Chapter 2:    Numbers                             page  9
# Chapter 3:    Letters                             page 13

def format(chapter, title, page, width=80) 
    return (formatChapter(chapter) + "  " + title).ljust(width/2) \
            + formatPage(page).rjust(width/2)
end

def formatChapter(chapnum)
    return "Chapter" + chapnum.to_s.rjust(2) + ":"
end

def formatPage(pagenum)
    return "page" + pagenum.to_s.rjust(3)
end

width = 60
puts("Table of Contents".center(width))
puts
puts format(1, "Getting Started", 1, width)
puts format(2, "Numbers", 9, width)
puts format(3, "Letters", 13, width)
