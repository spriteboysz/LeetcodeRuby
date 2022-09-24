# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 21:21
# FilePath: P0747. 至少是其他数字两倍的最大数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def dominant_index(nums)
    return 0 if nums.length == 0
    a, b = nums.max(2)
    a >= 2 * b ? nums.index(a) : -1
end

if __FILE__ == $PROGRAM_NAME
    p dominant_index([3, 6, 1, 0])
end
