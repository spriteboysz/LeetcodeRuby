# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:25
# FilePath: P2022. 将一维数组转变成二维数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} original
# @param {Integer} m
# @param {Integer} n
# @return {Integer[][]}
def construct2_d_array(original, m, n)
    return [] if original.length != m * n
    target = []
    (0...m).each { |i|
        target << original[i * n..(i * n + n - 1)]
    }
    target
end

if __FILE__ == $PROGRAM_NAME
    p construct2_d_array(original = [1, 2, 3, 4], m = 2, n = 2)
    p construct2_d_array(original = [1, 2, 3, 4], m = 4, n = 1)
    p construct2_d_array(original = [1, 2], m = 1, n = 1)
end
