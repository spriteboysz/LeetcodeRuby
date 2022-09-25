# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:29
# FilePath: P0151. 反转字符串中的单词.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def reverse_words(s)
    s.strip.split.reverse.join(" ")
end

if __FILE__ == $PROGRAM_NAME
    p reverse_words("  hello world  ")
end
