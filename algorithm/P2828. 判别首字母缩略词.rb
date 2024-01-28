# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-17 22:41
# FilePath: P2828. 判别首字母缩略词.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {String} s
# @return {Boolean}
def is_acronym(words, s)
    words.map { |word| word[0] }.join == s
end

if __FILE__ == $PROGRAM_NAME
    p is_acronym(words = ["never", "gonna", "give", "up", "on", "you"], s = "ngguoy")
end


