# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 11:22
# FilePath: P0371. 两整数之和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
    [a, b].sum
end

if __FILE__ == $PROGRAM_NAME
    p get_sum(a = 2, b = 3)
end
