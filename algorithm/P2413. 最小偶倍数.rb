# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 22:55
# FilePath: P2413. 最小偶倍数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def smallest_even_multiple(n)
    n % 2 == 0 ? n : n * 2
end

if __FILE__ == $PROGRAM_NAME
    p smallest_even_multiple(5)
    p smallest_even_multiple(6)
end
