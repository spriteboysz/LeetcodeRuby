# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:54
# FilePath: 面试题 08.04. 幂集.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    sub = []
    0.upto(nums.length).each { |i| sub += nums.combination(i).to_a }
    sub
end

if __FILE__ == $PROGRAM_NAME
    p subsets([1, 2, 3])
end
