# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 23:02
# FilePath: LCR 076. 数组中的第 K 个最大元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
    nums.sort[-k]
end

if __FILE__ == $PROGRAM_NAME
    p find_kth_largest([3, 2, 1, 5, 6, 4], k = 2)
end


