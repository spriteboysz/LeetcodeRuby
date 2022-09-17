# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:11
# FilePath: P0977. 有序数组的平方.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def sorted_squares(nums)
    left, right = 0, nums.length - 1
    nums2 = []
    while left <= right
        if nums[left] ** 2 > nums[right] ** 2
            nums2 << nums[left] ** 2
            left += 1
        else
            nums2 << nums[right] ** 2
            right -= 1
        end
    end
    nums2.reverse
end

if __FILE__ == $PROGRAM_NAME
    p sorted_squares(nums = [-7, -3, 2, 3, 11])
end
