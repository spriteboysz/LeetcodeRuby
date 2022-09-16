# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:11
# FilePath: P2215. 找出两数组的不同.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[][]}
def find_difference(nums1, nums2)
    nums1.uniq!
    nums2.uniq!
    [nums1 - nums2, nums2 - nums1]
end

if __FILE__ == $PROGRAM_NAME
    p find_difference(nums1 = [1, 2, 3, 3], nums2 = [1, 1, 2, 2])
end
