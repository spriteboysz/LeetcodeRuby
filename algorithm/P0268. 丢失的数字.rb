# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:40
# FilePath: P0268. 丢失的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    ((0..nums.length).to_a - nums).first
end

if __FILE__ == $PROGRAM_NAME
    p missing_number(nums = [9, 6, 4, 2, 3, 5, 7, 0, 1])
    p missing_number(nums = [0, 1])
end
