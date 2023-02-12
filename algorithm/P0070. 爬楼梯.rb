# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 11:52
# FilePath: P0070. 爬楼梯.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    a, b, c = 1, 2, 3
    return n if n == 1 || n == 2
    (n - 2).times do
        c = a + b
        a, b = b, c
    end
    c
end

if __FILE__ == $PROGRAM_NAME
    p climb_stairs(3)
end


