# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 12:24
# FilePath: 面试题 16.11. 跳水板.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} shorter
# @param {Integer} longer
# @param {Integer} k
# @return {Integer[]}
def diving_board(shorter, longer, k)
    return [] if k.zero?
    return [shorter * k] if shorter == longer
    res = [0] * (k + 1)
    (0..k).each { |i|
        res[i] = shorter * (k - i) + longer * i
    }
    res
end

if __FILE__ == $PROGRAM_NAME
    p diving_board(1, 2, 3)
end


