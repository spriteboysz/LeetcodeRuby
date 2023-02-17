# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 22:12
# FilePath: P2091. 从数组中移除最大值和最小值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def minimum_deletions(nums)
    n = nums.length
    return 1 if n == 1
    min_index = nums.index(nums.min)
    max_index = nums.index(nums.max)
    left, right = [min_index, max_index].min, [min_index, max_index].max
    [right + 1, n - left, left + 1 + n - right].min
end

if __FILE__ == $PROGRAM_NAME
    p minimum_deletions([2, 10, 7, 5, 4, 1, 8, 6])
end


