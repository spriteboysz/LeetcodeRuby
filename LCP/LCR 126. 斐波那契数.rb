# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:02
# FilePath: LCR 126. 斐波那契数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def fib(n)
    a, b = 0, 1
    n.times do
        a, b = b, a + b
    end
    a % 1000000007
end

if __FILE__ == $PROGRAM_NAME
    p fib(2)
    p fib(3)
    p fib(4)
end


