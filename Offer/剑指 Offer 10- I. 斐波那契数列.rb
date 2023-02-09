# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 23:25
# FilePath: 剑指 Offer 10- I. 斐波那契数列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def fib(n)
    # return n if n <= 1
    a, b = 0, 1
    n.times do
        a, b = b, a + b
    end
    a % 1000000007
end

if __FILE__ == $PROGRAM_NAME
    p fib(5)
end


