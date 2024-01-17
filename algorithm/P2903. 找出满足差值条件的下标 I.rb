# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-15 23:15
# FilePath: P2903. 找出满足差值条件的下标 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} index_difference
# @param {Integer} value_difference
# @return {Integer[]}
def find_indices(nums, index_difference, value_difference)
    nums.each_with_index { |num1, i|
        nums.each_with_index { |num2, j|
            if (i - j).abs >= index_difference and (num1 - num2).abs >= value_difference
                return [i, j]
            end
        }
    }
    [-1, -1]
end

if __FILE__ == $PROGRAM_NAME
    p find_indices(nums = [2, 1], index_difference = 0, value_difference = 0)
end


