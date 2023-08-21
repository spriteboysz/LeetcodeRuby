# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-21 23:16
# FilePath: P1509. 三次操作后最大值与最小值的最小差.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer}
def min_difference(nums)
    return 0 if nums.size < 5
    maximum, minimum = nums.max(4), nums.min(4)
    [maximum[0] - minimum[3], maximum[1] - minimum[2], maximum[2] - minimum[1], maximum[3] - minimum[0]].min
end

if __FILE__ == $PROGRAM_NAME
    p min_difference(nums = [1, 5, 0, 10, 14])
end


