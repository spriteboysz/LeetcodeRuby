# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:20
# FilePath: P1967. 作为子字符串出现在单词中的字符串数目.rb
# Description: 

# @param {String[]} patterns
# @param {String} word
# @return {Integer}
def num_of_strings(patterns, word)
    patterns.select { |pattern| word.include?(pattern) }.length
end

p num_of_strings(patterns = %w[a b c], word = "aaaaabbbbb")



