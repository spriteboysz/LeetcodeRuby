# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:50
# FilePath: P1636. 按照频率将数组升序排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    nums.sort_by { |num| [hash[num], -num] }
end

if __FILE__ == $PROGRAM_NAME
    p frequency_sort(nums = [-1, 1, -6, 4, 5, -6, 1, 4, 1])
end
