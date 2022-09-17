# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:34
# FilePath: P1078. Bigram 分词.rb
# Description:

load "common/leetcode.rb"

# @param {String} text
# @param {String} first
# @param {String} second
# @return {String[]}
def find_ocurrences(text, first, second)
    ocurrences, words = [], text.split
    words.each_with_index do |word, i|
        next if i == 0 || i == 1
        ocurrences << word if words[i - 2] == first && words[i - 1] == second
    end
    ocurrences
end

if __FILE__ == $PROGRAM_NAME
    p find_ocurrences(text = "we will we will rock you", first = "we", second = "will")
end