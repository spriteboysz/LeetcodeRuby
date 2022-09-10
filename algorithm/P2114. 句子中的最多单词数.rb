# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:58
# FilePath: P2114. 句子中的最多单词数.rb
# Description: 

# @param {String[]} sentences
# @return {Integer}
def most_words_found(sentences)
    max = 0
    sentences.each { |sentence| max = [sentence.split.length, max].max }
    max
end

# test
p most_words_found(["please wait", "continue to fight", "continue to win"])



