# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 15:37
# FilePath: P2656. K 个元素的最大和.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximize_sum(nums, k)
    nums.max * k + (k - 1) * k / 2
end

if __FILE__ == $PROGRAM_NAME
    p maximize_sum(nums = [1, 2, 3, 4, 5], k = 3)
end


