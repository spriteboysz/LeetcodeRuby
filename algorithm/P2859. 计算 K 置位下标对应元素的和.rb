# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-17 22:16
# FilePath: P2859. 计算 K 置位下标对应元素的和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def sum_indices_with_k_set_bits(nums, k)
    sum = 0
    nums.each_with_index { |num, i|
        sum += num if i.to_s(2).count("1") == k
    }
    sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_indices_with_k_set_bits(nums = [5, 10, 1, 5, 2], k = 1)
end


