#!/usr/bin/env ruby


def isNotDivisible(num) # -> Bool

    for i in 2...num -1
        if num % i == 0
            return false
        end
    end

    return true
end


puts "Type number:"

num = gets.to_i

if isNotDivisible(num)
    puts "YES"
else
    puts "NO"
end
