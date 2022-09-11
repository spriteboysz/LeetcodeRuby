# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:39
# FilePath: P2341. 数组能形成多少数对.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer[]}
def number_of_pairs(nums)
    even, odd = 0, 0
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.each_value { |v|
        even += v / 2
        odd += 1 if v % 2 == 1
    }
    [even, odd]
end

p number_of_pairs(nums = [1, 3, 2, 1, 3, 2, 2])




