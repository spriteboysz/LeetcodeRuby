# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 23:23
# FilePath: P1016. 子串能表示从 1 到 N 数字的二进制串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer} n
# @return {Boolean}
def query_string(s, n)
    (1..n).each { |num|
        return false unless s.include?(num.to_s(2))
    }
    true
end

if __FILE__ == $PROGRAM_NAME
    p query_string(s = "0110", n = 3)
end


