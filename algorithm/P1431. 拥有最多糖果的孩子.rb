# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 09:50
# FilePath: P1431. 拥有最多糖果的孩子.rb
# Description: 

# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    candies.map { |candy| candy + extra_candies >= candies.max }
end

puts kids_with_candies(candies = [4, 2, 1, 1, 2], extra_candies = 1)



