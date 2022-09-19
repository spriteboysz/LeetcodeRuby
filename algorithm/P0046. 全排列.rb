# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:20
# FilePath: P0046. 全排列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    nums.permutation.to_a
end

if __FILE__ == $PROGRAM_NAME
    p permute([0, 1])
end
