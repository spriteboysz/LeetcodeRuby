# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 21:25
# FilePath: P0922. 按奇偶排序数组 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def sort_array_by_parity_ii(nums)
    even, odd = [], []
    nums.each { |num|
        if num.odd?
            odd << num
        else
            even << num
        end
    }
    even.zip(odd).flatten
end

if __FILE__ == $PROGRAM_NAME
    nums = [4, 2, 5, 7]
    p sort_array_by_parity_ii(nums)
end
