# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 23:17
# FilePath: P0343. 整数拆分.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def integer_break(n)
    m = 10 ** 9 + 7
    return n - 1 if n <= 3

    div, mod = n / 3, n % 3
    if mod == 0
        (3 ** div) % m
    elsif mod == 1
        ((3 ** (div - 1)) % m * 4) % m
    else
        ((3 ** div) % m * 2) % m
    end
end

if __FILE__ == $PROGRAM_NAME
    p integer_break(10)
end


