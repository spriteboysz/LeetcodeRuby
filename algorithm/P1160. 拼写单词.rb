# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 22:32
# FilePath: P1160. 拼写单词.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
    alphabet = Array.new(26, 0)
    chars.each_char { |c| alphabet[c.ord - 97] += 1 }
    ret = 0
    words.each { |word|
        counts = alphabet.clone
        word.each_char { |c| counts[c.ord - 97] -= 1 }
        ret += word.length if counts.min >= 0
    }
    ret
end

if __FILE__ == $PROGRAM_NAME
    p count_characters(words = %w[hello world leetcode], chars = "welldonehoneyr")
end
