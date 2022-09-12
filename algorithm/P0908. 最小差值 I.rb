# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 18:09
# FilePath: P0908. 最小差值 I.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def smallest_range_i(nums, k)
    [nums.max - k - nums.min - k, 0].max
end

p smallest_range_i(nums = [0, 10], k = 2)
p smallest_range_i(nums = [1, 3, 6], k = 3)



