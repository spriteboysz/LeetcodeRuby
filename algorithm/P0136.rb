# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 22:16
# FilePath: P0136.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    ret = 0
    nums.each { |num| ret ^= num }
    ret
end

p single_number([4, 1, 2, 1, 2])



