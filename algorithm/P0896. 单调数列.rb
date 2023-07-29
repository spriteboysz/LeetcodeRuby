# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 22:57
# FilePath: P0896. 单调数列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def is_monotonic(nums)
    flag1, flag2 = false, false
    (1...nums.size).each { |i|
        flag1 = true if nums[i - 1] > nums[i]
        flag2 = true if nums[i - 1] < nums[i]
    }
    !(flag1 && flag2)
end

if __FILE__ == $PROGRAM_NAME
    p is_monotonic(nums = [1, 2, 2, 3])
end


