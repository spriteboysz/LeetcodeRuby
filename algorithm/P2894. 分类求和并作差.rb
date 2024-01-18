# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-18 22:48
# FilePath: P2894. 分类求和并作差.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} m
# @return {Integer}
def difference_of_sums(n, m)
    num1, num2 = 0, 0
    (1..n).each { |num|
        if num % m == 0
            num2 += num
        else
            num1 += num
        end
    }
    num1 - num2
end

if __FILE__ == $PROGRAM_NAME
    p difference_of_sums(n = 10, m = 3)
end


