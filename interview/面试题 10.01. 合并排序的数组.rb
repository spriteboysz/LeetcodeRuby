# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 12:58
# FilePath: 面试题 10.01. 合并排序的数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} a
# @param {Integer} m
# @param {Integer[]} b
# @param {Integer} n
# @return {Void} Do not return anything, modify A in-place instead.
def merge(a, m, b, n)
    (0...n).each { |i|
        a[i + m] = b[i]
    }
    a.sort!
end

if __FILE__ == $PROGRAM_NAME
    p merge(a = [1, 2, 3, 0, 0, 0], m = 3, b = [2, 5, 6], n = 3)
end


