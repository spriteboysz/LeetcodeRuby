# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:58
# FilePath: P1877. 数组中最大数对和的最小值.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def min_pair_sum(nums)
    nums.sort!
    n = nums.length
    sum = []
    nums.each_index { |i| sum[i] = nums[i] + nums[n - 1 - i] if i < n / 2 }
    sum.max
end

p min_pair_sum(nums = [3, 5, 4, 2, 4, 6])



