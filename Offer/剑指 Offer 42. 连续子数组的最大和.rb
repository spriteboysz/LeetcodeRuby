# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 15:49
# FilePath: 剑指 Offer 42. 连续子数组的最大和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    nums.reduce([]) { |a, v| a << [a[-1].to_i + v, v].max }.max
end

if __FILE__ == $PROGRAM_NAME
    p max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])
end


