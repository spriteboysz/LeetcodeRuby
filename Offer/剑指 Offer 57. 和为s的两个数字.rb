# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 21:50
# FilePath: 剑指 Offer 57. 和为s的两个数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    left, right = 0, nums.length - 1
    while left < right
        cur = nums[left] + nums[right]
        if cur > target
            right -= 1
        elsif cur < target
            left += 1
        else
            return [nums[left], nums[right]]
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p two_sum(nums = [2, 7, 11, 15], target = 9)
end
