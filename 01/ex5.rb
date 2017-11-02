#!/usr/bin/env ruby


def isNotDivisible(num) # -> Bool
    
    for i in 2...num -1
        if num % i == 0
            return false
        end
    end
    
    return true
end
    
    

    


catch(:decide) do
    while true
        puts "Type number:"
    
        num = gets.to_i

        if num <= 2
            puts "2以外を入力"
        else
            if isNotDivisible(num)
                puts "YES"
                throw :decide, "2以外"
            else
                puts "NO"
                throw :decide, "2以外"
            end
        end
    end
end
