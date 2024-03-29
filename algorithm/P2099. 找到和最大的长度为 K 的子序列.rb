# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 21:00
# FilePath: P2099. 找到和最大的长度为 K 的子序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def max_subsequence(nums, k)
    hash = Hash.new([])
    nums.each_with_index { |num, i|
        hash[num] = Array.new(hash[num]) << i
    }
    subsequence = Array.new(nums.size).fill(nil)
    nums.sort.reverse[...k].each { |num|
        subsequence[hash[num].first] = num
        hash[num].shift
    }
    subsequence.compact
end

if __FILE__ == $PROGRAM_NAME
    p max_subsequence(nums = [2, 1, 3, 3], k = 2)
end


