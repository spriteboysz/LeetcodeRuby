# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 16:40
# FilePath: 剑指 Offer 11. 旋转数组的最小数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} numbers
# @return {Integer}
def min_array(numbers)
    numbers.min
end

if __FILE__ == $PROGRAM_NAME
    p min_array([3, 4, 5, 1, 2])
end


