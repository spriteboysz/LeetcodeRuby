# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 10:41
# FilePath: P0066. 加一.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    carry = 1
    (digits.length - 1).downto(0).each do |i|
        carry += digits[i]
        digits[i] = carry % 10
        carry /= 10
    end
    digits.unshift(carry) if carry != 0
    digits
end

if __FILE__ == $PROGRAM_NAME
    p plus_one([4, 3, 2, 1])
    p plus_one([9, 9, 9, 9])
end
