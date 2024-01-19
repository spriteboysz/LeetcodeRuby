# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-18 22:52
# FilePath: P2855. 使数组成为递增数组的最少右移次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def minimum_right_shifts(nums)
    (1..nums.length).each { |i|
        return i - 1 if nums.sort == nums
        nums = [nums[-1]] + nums[...-1]
    }
    -1
end

if __FILE__ == $PROGRAM_NAME
    p minimum_right_shifts(nums = [3, 4, 5, 1, 2])
end


