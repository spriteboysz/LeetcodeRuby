# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:19
# FilePath: P0728. 自除数.rb
# Description: 

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
    def process(num)
        num.to_s.chars.each { |number|
            return false if number.to_i == 0 || num % number.to_i != 0
        }
        true
    end

    (left..right).select { |num| process(num) }
end

p self_dividing_numbers(left = 47, right = 85)



