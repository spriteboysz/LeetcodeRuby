# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 20:29
# FilePath: LCR 002. 二进制求和.rb
# Description:

load "common/leetcode.rb"

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    s, carry, num1, num2 = "", 0, a.chars, b.chars
    while !num1.empty? || !num2.empty? || carry > 0
        carry += num1.pop.to_i unless num1.empty?
        carry += num2.pop.to_i unless num2.empty?
        s += (carry % 2).to_s
        carry /= 2
    end
    s.reverse
end

if __FILE__ == $PROGRAM_NAME
    p add_binary(a = "1010", b = "1011")
end


