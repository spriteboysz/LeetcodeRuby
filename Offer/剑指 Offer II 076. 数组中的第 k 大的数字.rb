# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:39
# FilePath: 剑指 Offer II 076. 数组中的第 k 大的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
    nums.sort.reverse[k - 1]
end

if __FILE__ == $PROGRAM_NAME
    p find_kth_largest([3, 2, 3, 1, 2, 4, 5, 5, 6], k = 4)
end
