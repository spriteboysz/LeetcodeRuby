# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 15:10
# FilePath: 剑指 Offer II 084. 含有重复元素集合的全排列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    nums.permutation(nums.length).to_a.uniq
end

if __FILE__ == $PROGRAM_NAME
    p permute_unique([1, 1, 2])
end


