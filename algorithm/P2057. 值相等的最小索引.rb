# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:10
# FilePath: P2057. 值相等的最小索引.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def smallest_equal(nums)
    nums.each_with_index { |num, i| return i if i % 10 == num }
    -1
end

p smallest_equal(nums = [4, 3, 2, 1])
p smallest_equal(nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0])



