# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-14 21:46
# FilePath: P2942. 查找包含给定字符的单词.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {Character} x
# @return {Integer[]}
def find_words_containing(words, x)
    indexes = []
    words.each_with_index { |word, i|
        indexes << i if word.include?(x)
    }
    indexes
end

if __FILE__ == $PROGRAM_NAME
    p find_words_containing(words = ["abc", "bcd", "data", "cbc"], x = "a")
end


