# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:49
# FilePath: 剑指 Offer II 080. 含有 k 个元素的组合.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} k
# @return {Integer[][]}
def combine(n, k)
    (1..n).to_a.combination(k).to_a
end

if __FILE__ == $PROGRAM_NAME
    p combine(4, 2)
end
