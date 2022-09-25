# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 14:20
# FilePath: P2148. 元素计数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def count_elements(nums)
    nums.delete(nums.min)
    nums.delete(nums.max)
    nums.length
end

if __FILE__ == $PROGRAM_NAME
    p count_elements(nums = [-3, -3, 3, 3, 90])
end
