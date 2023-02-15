# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 11:16
# FilePath: 面试题 16.24. 数对和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def pair_sums(nums, target)
    hash = Hash.new(0)
    ret = []
    nums.each { |num|
        pair = target - num
        if hash[pair] > 0
            ret << [pair, num]
            hash[pair] -= 1
        else
            hash[num] += 1
        end
    }
    ret
end

if __FILE__ == $PROGRAM_NAME
    p pair_sums(nums = [5, 6, 5], target = 11)
end


