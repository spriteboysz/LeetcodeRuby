# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:18
# FilePath: 剑指 Offer II 083. 没有重复元素集合的全排列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[][]}
def permute(nums)
    nums.permutation.to_a
end

if __FILE__ == $PROGRAM_NAME
    p permute(nums = [1, 2, 3])
end
