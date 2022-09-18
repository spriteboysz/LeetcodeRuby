# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 21:45
# FilePath: 剑指 Offer 65. 不用加减乘除做加法.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def add(a, b)
    while b != 0
        carry = (a & b) << 1
        a = a ^ b
        b = carry
    end
    a
end

if __FILE__ == $PROGRAM_NAME
    p add(1, 2)
end
