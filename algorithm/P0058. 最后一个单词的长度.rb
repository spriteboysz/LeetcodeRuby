# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:57
# FilePath: P0058. 最后一个单词的长度.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s.strip.split.last.length
end

if __FILE__ == $PROGRAM_NAME
    p length_of_last_word(s = "   fly me   to   the moon  ")
end
