# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 22:34
# FilePath: P2047. 句子中的有效单词数.rb
# Description:

load "common/leetcode.rb"

# @param {String} sentence
# @return {Integer}
def count_valid_words(sentence)
    cnt = 0
    sentence.split.each do |word|
        cnt += 1 if word.match('(^[a-z]*)([a-z]*)([a-z]-[a-z]){0,1}([a-z]*)([\,\.\!\ba-z]?$)')
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_valid_words("alice and  bob are playing stone-game10")
end


