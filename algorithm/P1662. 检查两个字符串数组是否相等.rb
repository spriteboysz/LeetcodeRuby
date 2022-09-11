# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:48
# FilePath: P1662. 检查两个字符串数组是否相等.rb
# Description: 

# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
    word1.join("") == word2.join("")
end

p array_strings_are_equal(word1 = %w[abc d defg], word2 = ["abcddefg"])



