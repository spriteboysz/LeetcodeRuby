# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:26
# FilePath: P2485. 找出中枢整数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def pivot_integer(n)
    pivot = ((n * n + n) / 2) ** 0.5
    pivot % 1 == 0 ? pivot.to_i : -1
end

if __FILE__ == $PROGRAM_NAME
    p pivot_integer(8)
    p pivot_integer(4)
end


