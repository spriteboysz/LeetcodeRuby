# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:57
# FilePath: 面试题 08.07. 无重复字符串的排列组合.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String[]}
def permutation(s)
    s.chars.permutation.to_a.map(&:join)
end

if __FILE__ == $PROGRAM_NAME
    p permutation("qwe")
end
