# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 23:20
# FilePath: P0215. 数组中的第K个最大元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
    nums.sort[-k]
end

if __FILE__ == $PROGRAM_NAME
    p find_kth_largest([3, 2, 3, 1, 2, 4, 5, 5, 6], 4)
end
