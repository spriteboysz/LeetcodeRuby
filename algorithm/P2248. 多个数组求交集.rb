# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:05
# FilePath: P2248. 多个数组求交集.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} nums
# @return {Integer[]}
def intersection(nums)
    inter = nums[0]
    nums.each_index { |i|
        next if i.zero?
        inter &= nums[i]
    }
    inter.sort
end

if __FILE__ == $PROGRAM_NAME
    p intersection(nums = [[3, 1, 2, 4, 5], [1, 2, 3, 4], [3, 4, 5, 6]])
    p intersection(nums = [[1, 2, 3], [4, 5, 6]])
end
