# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:58
# FilePath: P0448. 找到所有数组中消失的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
    (1..nums.length).to_a - nums
end

if __FILE__ == $PROGRAM_NAME
    p find_disappeared_numbers(nums = [4, 3, 2, 7, 8, 2, 3, 1])
    p find_disappeared_numbers(nums = [1, 1])
end
