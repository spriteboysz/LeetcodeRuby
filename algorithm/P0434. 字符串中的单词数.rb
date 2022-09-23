# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:55
# FilePath: P0434. 字符串中的单词数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def count_segments(s)
    s.strip.split.length
end

if __FILE__ == $PROGRAM_NAME
    p count_segments("Hello, my name is John")
end
