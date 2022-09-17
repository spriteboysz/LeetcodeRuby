# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:50
# FilePath: 剑指 Offer 21. 调整数组顺序使奇数位于偶数前面.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def exchange(nums)
    even, odd = [], []
    nums.each do |num|
        even << num if num.even?
        odd << num if num.odd?
    end
    odd + even
end

if __FILE__ == $PROGRAM_NAME
    p exchange(nums = [1, 2, 3, 4])
end
