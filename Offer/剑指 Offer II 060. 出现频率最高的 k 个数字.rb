# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:27
# FilePath: 剑指 Offer II 060. 出现频率最高的 k 个数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.keys.sort_by { |k| hash[k] }.reverse[0...k]
end

if __FILE__ == $PROGRAM_NAME
    p top_k_frequent(nums = [1, 1, 1, 2, 2, 3], k = 2)
end
