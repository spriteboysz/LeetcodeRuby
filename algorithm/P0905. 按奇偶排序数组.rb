# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:38
# FilePath: P0905. 按奇偶排序数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity(nums)
    even, odd = [], []
    nums.each { |num|
        if num % 2 == 1
            odd << num
        else
            even << num
        end
    }
    even + odd
end

if __FILE__ == $PROGRAM_NAME
    nums = [3, 1, 2, 4]
    p sort_array_by_parity(nums)
end




