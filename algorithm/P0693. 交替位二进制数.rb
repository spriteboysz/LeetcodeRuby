# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:39
# FilePath: P0693. 交替位二进制数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
    ss = n.to_s(2)
    !ss.include?("00") && !ss.include?("11")
end

if __FILE__ == $PROGRAM_NAME
    p has_alternating_bits(5)
    p has_alternating_bits(7)
    p has_alternating_bits(11)
end
