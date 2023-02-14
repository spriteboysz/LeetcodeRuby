# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-13 23:20
# FilePath: P1324. 竖直打印单词.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String[]}
def print_vertically(s)
    words = s.split
    words.map { |word| word.ljust(words.map(&:length).max) }.map(&:chars).transpose.map(&:join).map(&:rstrip)
end

if __FILE__ == $PROGRAM_NAME
    p print_vertically(s = "HOW ARE YOU")
    p print_vertically(s = "CONTEST IS COMING")
end


