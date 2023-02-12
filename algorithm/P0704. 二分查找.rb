# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 17:04
# FilePath: P0704. 二分查找.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left, right = 0, nums.length - 1
    while left <= right - 1 or left == right
        mid = (left + right) / 2
        return mid if nums[mid] == target
        if nums[mid] < target
            left = mid + 1
        else
            right = mid - 1
        end
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p search(nums = [-1,0,3,5,9,12], target = 9)
end


