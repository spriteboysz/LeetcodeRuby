# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 22:36
# FilePath: P0088. 合并两个有序数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    (0...n).each do |i|
        nums1[m + i] = nums2[i]
    end
    nums1.sort!
end

if __FILE__ == $PROGRAM_NAME
    p merge(nums1 = [1, 2, 3, 0, 0, 0], m = 3, nums2 = [2, 5, 6], n = 3)
end


