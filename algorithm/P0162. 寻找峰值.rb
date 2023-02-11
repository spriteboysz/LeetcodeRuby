# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 17:29
# FilePath: P0162. 寻找峰值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    left, right = 0, nums.length - 1
    while left < right
        mid = left + (right - left) / 2
        if nums[mid] > nums[mid + 1]
            right = mid
        else
            left = mid + 1
        end
    end
    left
end

if __FILE__ == $PROGRAM_NAME
    p find_peak_element(nums = [1, 2, 1, 3, 5, 6, 4])
end


