# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 19:52
# FilePath: P0349. 两个数组的交集.rb
# Description: 

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
    nums2.uniq!
    nums1.uniq.select { |num| nums2.include?(num) }
end

p intersection(nums1 = [4, 9, 4], nums2 = [9, 4, 9, 8, 4])



