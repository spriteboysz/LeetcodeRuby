# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:22
# FilePath: 剑指 Offer II 079. 所有子集.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    sub = []
    0.upto(nums.length).each do |i|
        sub += nums.combination(i).to_a
    end
    sub
end

if __FILE__ == $PROGRAM_NAME
    p subsets(nums = [1, 2, 3])
end
