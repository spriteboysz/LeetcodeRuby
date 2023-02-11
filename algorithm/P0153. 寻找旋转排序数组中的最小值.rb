# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 17:27
# FilePath: P0153. 寻找旋转排序数组中的最小值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
    nums.min
end

if __FILE__ == $PROGRAM_NAME
    p find_min(nums = [3,4,5,1,2])
end


