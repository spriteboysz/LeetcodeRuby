# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:59
# FilePath: P2185. 统计包含给定前缀的字符串.rb
# Description: 

# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
    words.select { |word| word.start_with?(pref) }.length
end

p prefix_count(words = %w[pay attention practice attend], pref = "at")



