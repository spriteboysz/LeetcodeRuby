# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 21:41
# FilePath: P0027. 移除元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    nums.delete(val)
    nums.length
end

if __FILE__ == $PROGRAM_NAME
    p remove_element(nums = [0, 1, 2, 2, 3, 0, 4, 2], val = 2)
end
