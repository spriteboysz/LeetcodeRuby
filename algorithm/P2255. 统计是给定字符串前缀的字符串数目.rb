# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:26
# FilePath: P2255. 统计是给定字符串前缀的字符串数目.rb
# Description: 

# @param {String[]} words
# @param {String} s
# @return {Integer}
def count_prefixes(words, s)
    words.select { |word| s.start_with?(word) }.length
end

p count_prefixes(words = %w[a b c ab bc abc], s = "abc")

