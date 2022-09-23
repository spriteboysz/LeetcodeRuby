# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:55
# FilePath: P0598. 范围求和 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
    ops.each do |op|
        m = [m, op[0]].min
        n = [n, op[1]].min
    end
    m * n
end

if __FILE__ == $PROGRAM_NAME
    p max_count(m = 3, n = 3, ops = [[2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3]])
end
