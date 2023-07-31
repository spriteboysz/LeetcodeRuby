# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 23:16
# FilePath: P1823. 找出游戏的获胜者.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def find_the_winner(n, k)
    pos = 0
    (2..n).each { |i|
        pos = (pos + k) % i
    }
    pos + 1
end

if __FILE__ == $PROGRAM_NAME
    p find_the_winner(n = 5, k = 2)
end


