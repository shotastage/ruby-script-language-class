#!/usr/bin/env ruby

rdm = rand(0...99) 


while true
    your_num = gets.to_i

    if your_num > rdm
        puts "大きい"
    elsif your_num < rdm
        puts "小さい"
    else
        puts "同じ"
        break
    end
end
