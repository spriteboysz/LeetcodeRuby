# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 22:27
# FilePath: P0050. Pow(x, n).rb
# Description:

load "common/leetcode.rb"

# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
    x ** n
end

if __FILE__ == $PROGRAM_NAME
    p my_pow(x = 2.00000, n = 10)
    p my_pow(x = 2.00000, n = -2)
end


