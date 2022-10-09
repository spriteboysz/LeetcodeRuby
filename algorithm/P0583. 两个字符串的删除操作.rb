# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:15
# FilePath: P0583. 两个字符串的删除操作.rb
# Description:

load "common/leetcode.rb"
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
    alphabet = Array.new(26, 0)
    word1.each_char { |c| alphabet[c.ord - "a".ord] += 1 }
    word2.each_char { |c| alphabet[c.ord - "a".ord] -= 1 }
    alphabet.map(&:abs).sum
end

if __FILE__ == $PROGRAM_NAME
    p min_distance(word1 = "leetcode", word2 = "etco")
end
