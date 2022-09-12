# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 23:04
# FilePath: P0258. 各位相加.rb
# Description: 

# @param {Integer} num
# @return {Integer}
def add_digits(num)
    while num >= 10
        num = num.to_s.chars.map(&:to_i).sum
    end
    num
end

p add_digits(num = 38)



