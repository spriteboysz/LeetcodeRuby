# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 23:23
# FilePath: P0412. Fizz Buzz.rb
# Description: 

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
    ss = []
    (1..n).each { |i|
        if i % 3 == 0 and i % 5 == 0
            ss.append("FizzBuzz")
        elsif i % 3 == 0
            ss.append("Fizz")
        elsif i % 5 == 0
            ss.append("Buzz")
        else
            ss.append(i.to_s)
        end
    }
    ss
end

p fizz_buzz(n = 15)



