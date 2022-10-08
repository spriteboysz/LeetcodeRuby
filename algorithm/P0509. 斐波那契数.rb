# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 22:21
# FilePath: P0509. 斐波那契数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def fib(n)
    return n if n <= 1
    a, b, c = 0, 1, 1
    (2..n).each do |_|
        c = a + b
        a = b
        b = c
    end
    c
end

if __FILE__ == $PROGRAM_NAME
    p fib(4)
end
