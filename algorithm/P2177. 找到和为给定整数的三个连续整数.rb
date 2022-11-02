# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 23:29
# FilePath: P2177. 找到和为给定整数的三个连续整数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer[]}
def sum_of_three(num)
    num % 3 == 0 ? [num / 3 - 1, num / 3, num / 3 + 1] : []
end

if __FILE__ == $PROGRAM_NAME
    p sum_of_three(33)
    p sum_of_three(4)
end
