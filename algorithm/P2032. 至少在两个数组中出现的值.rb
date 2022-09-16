# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:35
# FilePath: P2032. 至少在两个数组中出现的值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @return {Integer[]}
def two_out_of_three(nums1, nums2, nums3)
    nums = Array.new(101, 0)
    nums1.each { |num| nums[num] |= 1 }
    nums2.each { |num| nums[num] |= 2 }
    nums3.each { |num| nums[num] |= 4 }
    (0..100).select { |num|
        [3, 5, 6, 7].include?(nums[num])
    }
end

if __FILE__ == $PROGRAM_NAME
    p two_out_of_three(nums1 = [3, 1], nums2 = [2, 3], nums3 = [1, 2])
    p two_out_of_three(nums1 = [1, 2, 2], nums2 = [4, 3, 3], nums3 = [5])
end
