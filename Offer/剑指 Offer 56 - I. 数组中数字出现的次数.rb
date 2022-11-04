# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 22:14
# FilePath: 剑指 Offer 56 - I. 数组中数字出现的次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def single_numbers(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
    end
    hash.keys.filter { |el| hash[el] == 1 }
end

if __FILE__ == $PROGRAM_NAME
    p single_numbers([1, 2, 10, 4, 1, 4, 3, 3])
end
