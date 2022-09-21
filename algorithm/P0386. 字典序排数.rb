# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:09
# FilePath: P0386. 字典序排数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer[]}
def lexical_order(n)
    (1..n).map(&:to_s).sort.map(&:to_i)
end

if __FILE__ == $PROGRAM_NAME
    p lexical_order(13)
end
