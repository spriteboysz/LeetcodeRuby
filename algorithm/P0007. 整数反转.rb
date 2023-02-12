# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 22:10
# FilePath: P0007. 整数反转.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} x
# @return {Integer}
def reverse(x)
    flag = x < 0 ? -1 : 1
    x = x.abs.to_s.reverse.to_i * flag
    (x < -(2 ** 31) || x > 2 ** 31 - 1) ? 0 : x
end

if __FILE__ == $PROGRAM_NAME
    p reverse(123)
    p reverse(-123)
end


