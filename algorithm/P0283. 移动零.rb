# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 22:11
# FilePath: P0283. 移动零.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    n = nums.length
    nums.delete_if { |el| el == 0 }
    m = nums.length
    (n - m).times { nums << 0 }
    nums
end

if __FILE__ == $PROGRAM_NAME
    p move_zeroes(nums = [0, 1, 0, 3, 12])
end


