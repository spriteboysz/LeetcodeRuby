# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-17 22:26
# FilePath: P2869. 收集元素的最少操作次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def min_operations(nums, k)
    digits = [false] * k
    nums.reverse.each_with_index { |num, i|
        digits[num - 1] = true if num <= k
        return i + 1 if digits.all?
    }
end

if __FILE__ == $PROGRAM_NAME
    p min_operations(nums = [3, 1, 5, 4, 2], k = 2)
end


