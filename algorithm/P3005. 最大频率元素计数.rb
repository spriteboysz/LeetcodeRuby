# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-15 23:09
# FilePath: P3005. 最大频率元素计数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def max_frequency_elements(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    sum = 0
    hash.values.each { |num| sum += num if num == hash.values.max }
    sum
end

if __FILE__ == $PROGRAM_NAME
    p max_frequency_elements(nums = [1, 2, 2, 3, 1, 4])
end


