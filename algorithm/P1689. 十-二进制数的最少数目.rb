# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:11
# FilePath: P1689. 十-二进制数的最少数目.rb
# Description:

load "common/leetcode.rb"

# @param {String} n
# @return {Integer}
def min_partitions(n)
    n.chars.map(&:to_i).max
end

if __FILE__ == $PROGRAM_NAME
    p min_partitions(n = "27346209830709182346")
end
