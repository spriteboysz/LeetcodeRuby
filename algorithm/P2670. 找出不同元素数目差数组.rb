# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 22:36
# FilePath: P2670. 找出不同元素数目差数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def distinct_difference_array(nums)
    diff = []
    nums.each_index { |i|
        diff << nums[0..i].uniq.size - nums[i + 1..-1].uniq.size
    }
    diff
end

if __FILE__ == $PROGRAM_NAME
    p distinct_difference_array(nums = [1, 2, 3, 4, 5])
end


