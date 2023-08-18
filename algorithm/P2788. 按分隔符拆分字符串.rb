# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-17 23:10
# FilePath: P2788. 按分隔符拆分字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {Character} separator
# @return {String[]}
def split_words_by_separator(words, separator)
    words.map { |word| word.split(separator) }.flatten.reject { |word| word.empty? }
end

if __FILE__ == $PROGRAM_NAME
    p split_words_by_separator(words = ["one.two.three", "four.five", "six"], separator = ".")
    p split_words_by_separator(["$easy$", "$problem$"], "$")
end


