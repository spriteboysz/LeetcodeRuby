# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 22:30
# FilePath: P1009. 十进制整数的反码.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def bitwise_complement(n)
    n.to_s(2).chars.map { |c| (1 - c.to_i).to_s }.join.to_i(2)
end

if __FILE__ == $PROGRAM_NAME
    p bitwise_complement(5)
end
