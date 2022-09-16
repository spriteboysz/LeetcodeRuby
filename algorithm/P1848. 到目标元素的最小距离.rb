# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 22:43
# FilePath: P1848. 到目标元素的最小距离.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @param {Integer} start
# @return {Integer}
def get_min_distance(nums, target, start)
    minimum = nums.length
    nums.each_with_index { |num, i|
        minimum = [minimum, (i - start).abs].min if num == target
    }
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p get_min_distance(nums = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], target = 1, start = 0)
end
