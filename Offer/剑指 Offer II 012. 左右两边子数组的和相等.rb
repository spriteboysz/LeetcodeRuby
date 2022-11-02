# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 00:04
# FilePath: 剑指 Offer II 012. 左右两边子数组的和相等.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    total, pre_sum = nums.sum, 0
    nums.each_with_index do |num, i|
        return i if pre_sum * 2 + num == total
        pre_sum += num
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p pivot_index([1, 2, 3])
    p pivot_index([2, 1, -1])
end
