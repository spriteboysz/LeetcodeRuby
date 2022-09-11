# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:17
# FilePath: LCP 17. 速算机器人.rb
# Description: 

# @param {String} s
# @return {Integer}
def calculate(s)
    x, y = 1, 0
    s.chars.each { |c|
        x = 2 * x + y if c == "A"
        y = 2 * y + x if c == "B"
    }
    x + y
end

p calculate(s = "AB")



