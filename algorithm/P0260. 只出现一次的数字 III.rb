# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:42
# FilePath: P0260. 只出现一次的数字 III.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.keys.select { |num| hash[num] == 1 }
end

if __FILE__ == $PROGRAM_NAME
    p single_number(nums = [1, 2, 1, 3, 2, 5])
end
