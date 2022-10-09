# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:30
# FilePath: P1455. 检查单词是否为句中其他单词的前缀.rb
# Description:

load "common/leetcode.rb"

# @param {String} sentence
# @param {String} search_word
# @return {Integer}
def is_prefix_of_word(sentence, search_word)
    sentence.split(" ").each_with_index do |word, i|
        return i + 1 if word.start_with?(search_word)
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p is_prefix_of_word(sentence = "this problem is an easy problem", search_word = "pro")
end
