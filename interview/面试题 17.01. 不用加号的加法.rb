# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:53
# FilePath: 面试题 17.01. 不用加号的加法.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def add(a, b)
    [a, b].sum
end

if __FILE__ == $PROGRAM_NAME
    p add(1, 1)
end
