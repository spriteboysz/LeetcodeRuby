# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 10:32
# FilePath: 面试题 08.05. 递归乘法.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def multiply(a, b)
    return 0 if a == 0 || b == 0
    a > b ? multiply(a, b - 1) + a : multiply(a - 1, b) + b
end

if __FILE__ == $PROGRAM_NAME
    p multiply(1, 10)
end
