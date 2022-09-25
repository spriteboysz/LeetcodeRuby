# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 10:59
# FilePath: 剑指 Offer 53 - I. 在排序数组中查找数字 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash[target]
end

if __FILE__ == $PROGRAM_NAME
    p search(nums = [5, 7, 7, 8, 8, 10], target = 8)
    p search(nums = [5, 7, 7, 8, 8, 10], target = 6)
end
