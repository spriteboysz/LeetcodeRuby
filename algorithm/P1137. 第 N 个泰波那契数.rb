# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:21
# FilePath: P1137. 第 N 个泰波那契数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def tribonacci(n)
    return n if n <= 1
    return 1 if n == 2
    a, b, c = 0, 1, 1
    (3...n).each do |i|
        a, b, c = b, c, a + b + c
    end
    a + b + c
end

if __FILE__ == $PROGRAM_NAME
    p tribonacci(25)
end
