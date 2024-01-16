# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-16 22:31
# FilePath: P2980. 检查按位或是否存在尾随零.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def has_trailing_zeros(nums)
    nums.select { |num| num.even? }.length >= 2
end

if __FILE__ == $PROGRAM_NAME
    p has_trailing_zeros(nums = [2, 4, 8, 16])
end


