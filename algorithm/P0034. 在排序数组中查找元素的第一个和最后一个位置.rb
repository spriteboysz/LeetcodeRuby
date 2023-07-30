# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 12:07
# FilePath: P0034. 在排序数组中查找元素的第一个和最后一个位置.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    first, last = -1, -1
    nums.each_with_index { |num, i|
        first = i if num == target && first == -1
        last = i if num == target && first != -1
    }
    [first, last]
end

if __FILE__ == $PROGRAM_NAME
    p search_range(nums = [5, 7, 7, 8, 8, 8, 8, 10], target = 8)
end


