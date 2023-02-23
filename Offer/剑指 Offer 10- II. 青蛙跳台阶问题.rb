# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 23:02
# FilePath: 剑指 Offer 10- II. 青蛙跳台阶问题.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def num_ways(n)
    a, b = 1, 1
    n.times do
        a, b = b, a + b
    end
    a % (10 ** 9 + 7)
end

if __FILE__ == $PROGRAM_NAME
    p num_ways(2)
    p num_ways(7)
end


