# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:10
# FilePath: P0561. 数组拆分.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
    sum = 0
    nums.sort!
    (0...nums.length).step(2).each { |i| sum += nums[i] }
    sum
end

p array_pair_sum(nums = [6, 2, 6, 5, 1, 2])



