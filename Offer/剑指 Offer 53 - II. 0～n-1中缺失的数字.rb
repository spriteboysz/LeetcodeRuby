# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:25
# FilePath: 剑指 Offer 53 - II. 0～n-1中缺失的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    n = nums.length
    n * (n + 1) / 2 - nums.sum
end

if __FILE__ == $PROGRAM_NAME
    p missing_number([0, 1, 2, 3, 4, 5, 6, 7, 9])
end
