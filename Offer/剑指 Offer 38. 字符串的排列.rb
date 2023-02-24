# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-23 23:09
# FilePath: 剑指 Offer 38. 字符串的排列.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String[]}
def permutation(s)
    s.chars.permutation(s.length).to_a.map(&:join).uniq
end

if __FILE__ == $PROGRAM_NAME
    p permutation("abc")
    p permutation("aac")
end


