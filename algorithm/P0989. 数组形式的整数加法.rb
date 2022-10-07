# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 11:20
# FilePath: P0989. 数组形式的整数加法.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} num
# @param {Integer} k
# @return {Integer[]}
def add_to_array_form(num, k)
    sum, add, carry = [], k.to_s.chars.map(&:to_i), 0
    while !num.empty? || !add.empty? || carry > 0
        carry += num.pop unless num.empty?
        carry += add.pop unless add.empty?
        sum << carry % 10
        carry /= 10
    end
    sum.reverse!
end

if __FILE__ == $PROGRAM_NAME
    p add_to_array_form(num = [2, 1, 5], k = 806)
    p add_to_array_form(num = [9, 9, 9], k = 1)
end
