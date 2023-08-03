# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 23:00
# FilePath: 剑指 Offer 62. 圆圈中最后剩下的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} m
# @return {Integer}
def last_remaining(n, m)
    remain = 0
    (2..n).each { |i|
        remain = (m + remain) % i
    }
    remain
end

if __FILE__ == $PROGRAM_NAME
    p last_remaining(n = 5, m = 3)
end


