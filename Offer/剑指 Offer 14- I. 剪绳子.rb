# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 23:10
# FilePath: 剑指 Offer 14- I. 剪绳子.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def cutting_rope(n)
    return n - 1 if n <= 3

    div, mod = n / 3, n % 3
    if mod == 0
        3 ** div
    elsif mod == 1
        3 ** (div - 1) * 4
    else
        3 ** div * 2
    end
end

if __FILE__ == $PROGRAM_NAME
    p cutting_rope(10)
end


