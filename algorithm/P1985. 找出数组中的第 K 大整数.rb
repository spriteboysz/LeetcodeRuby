# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 23:01
# FilePath: P1985. 找出数组中的第 K 大整数.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} nums
# @param {Integer} k
# @return {String}
def kth_largest_number(nums, k)
    nums.map(&:to_i).sort[-k].to_s
end

if __FILE__ == $PROGRAM_NAME
    p kth_largest_number(nums = %w[2 21 12 1], k = 3)
end


