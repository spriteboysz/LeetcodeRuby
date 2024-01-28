# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-27 21:55
# FilePath: P3010. 将数组分成最小总代价的子数组 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def minimum_cost(nums)
    nums.first + nums[1..].sort[0..1].sum
end

if __FILE__ == $PROGRAM_NAME
    p minimum_cost(nums = [10, 3, 1, 1])
end


