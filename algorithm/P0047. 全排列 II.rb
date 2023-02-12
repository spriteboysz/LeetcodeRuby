# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 22:24
# FilePath: P0047. 全排列 II.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer[][]}
def permute_unique(nums)
    nums.permutation(nums.length).to_a.uniq
end

if __FILE__ == $PROGRAM_NAME
    p permute_unique([1,2,3])
end


