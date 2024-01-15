# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-14 21:41
# FilePath: P2956. 找到两个数组中的公共元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def find_intersection_values(nums1, nums2)
    a, b = 0, 0
    nums1.each { |num|
        a += 1 if nums2.include?(num)
    }
    nums2.each { |num|
        b += 1 if nums1.include?(num)
    }
    [a, b]
end

if __FILE__ == $PROGRAM_NAME
    p find_intersection_values(nums1 = [4, 3, 2, 3, 1], nums2 = [2, 2, 5, 2, 3, 6])
end


