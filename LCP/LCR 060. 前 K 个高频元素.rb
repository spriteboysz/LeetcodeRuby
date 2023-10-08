# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:37
# FilePath: LCR 060. 前 K 个高频元素.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.keys.sort { |a, b| hash[b] - hash[a] }.first(k)
end

if __FILE__ == $PROGRAM_NAME
    p top_k_frequent(nums = [1, 1, 1, 2, 2, 3], k = 2)
end


