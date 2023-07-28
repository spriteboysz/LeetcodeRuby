# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 23:18
# FilePath: P0154. 寻找旋转排序数组中的最小值 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    nums.min
end

if __FILE__ == $PROGRAM_NAME
    p find_min(nums = [2, 2, 2, 0, 1])
end


