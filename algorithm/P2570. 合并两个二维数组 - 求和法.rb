# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 23:40
# FilePath: P2570. 合并两个二维数组 - 求和法.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} nums1
# @param {Integer[][]} nums2
# @return {Integer[][]}
def merge_arrays(nums1, nums2)
    hash = Hash.new(0)
    (nums1 + nums2).each { |k, v| hash[k] += v }
    hash.sort_by { |k, _| k }
end

if __FILE__ == $PROGRAM_NAME
    p merge_arrays(nums1 = [[1, 2], [2, 3], [4, 5]], nums2 = [[1, 4], [3, 2], [4, 1]])
end


