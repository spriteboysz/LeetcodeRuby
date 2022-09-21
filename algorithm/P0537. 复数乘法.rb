# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:23
# FilePath: P0537. 复数乘法.rb
# Description:

load "common/leetcode.rb"

# @param {String} num1
# @param {String} num2
# @return {String}
def complex_number_multiply(num1, num2)
    a, b = num1.split("+").map(&:to_i)
    c, d = num2.split("+").map(&:to_i)
    (a * c - b * d).to_s + "+" + (a * d + b * c).to_s + "i"
end

if __FILE__ == $PROGRAM_NAME
    p complex_number_multiply(num1 = "1+-1i", num2 = "1+-1i")
end
