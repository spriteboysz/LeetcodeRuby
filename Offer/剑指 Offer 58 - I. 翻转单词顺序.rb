# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:27
# FilePath: 剑指 Offer 58 - I. 翻转单词顺序.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def reverse_words(s)
    s.strip.split.reverse.join(" ")
end

if __FILE__ == $PROGRAM_NAME
    p reverse_words("  hello world!  ")
    p reverse_words("a good   example")
end
