# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 23:17
# FilePath: P2778. 特殊元素平方和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def sum_of_squares(nums)
    sum, n = 0, nums.size
    nums.each_with_index { |num, i|
        sum += num ** 2 if n % (i + 1) == 0
    }
    sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_of_squares(nums = [2, 7, 1, 19, 18, 3])
end


