# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 23:20
# FilePath: P1753. 移除石子的最大得分.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @param {Integer} c
# @return {Integer}
def maximum_score(a, b, c)
    max = [a, b, c].max
    sum = [a, b, c].sum
    sum <= 2 * max ? sum - max : sum / 2
end

if __FILE__ == $PROGRAM_NAME
    p maximum_score(a = 2, b = 4, c = 6)
end


