# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 20:33
# FilePath: 面试题 05.06. 整数转换.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def convert_integer(a, b)
    a &= 0xFFFFFFFF
    b &= 0xFFFFFFFF
    (a ^ b).to_s(2).count("1")
end

if __FILE__ == $PROGRAM_NAME
    p convert_integer(29, 15)
    p convert_integer(826966453, -729934991)
end
