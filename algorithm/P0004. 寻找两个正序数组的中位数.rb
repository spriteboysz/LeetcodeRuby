# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 16:25
# FilePath: P0004. 寻找两个正序数组的中位数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = (nums1 + nums2).sort
    n = nums.length
    n % 2 == 1 ? nums[n / 2] : (nums[n / 2 - 1] + nums[n / 2]) / 2.0
end

if __FILE__ == $PROGRAM_NAME
    p find_median_sorted_arrays(nums1 = [1, 2], nums2 = [3, 4])
end


