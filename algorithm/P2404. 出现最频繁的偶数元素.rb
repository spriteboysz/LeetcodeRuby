# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 13:49
# FilePath: P2404. 出现最频繁的偶数元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def most_frequent_even(nums)
    hash = Hash.new(0)
    even = nums.select(&:even?)
    return -1 if even.empty?
    even.each { |num| hash[num] += 1 }
    even.min_by { |num| [-hash[num], num] }
end

if __FILE__ == $PROGRAM_NAME
    p most_frequent_even(nums = [4, 4, 4, 9, 2, 4])
end
