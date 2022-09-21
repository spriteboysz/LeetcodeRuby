# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 23:51
# FilePath: 剑指 Offer II 063. 替换单词.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
    dictionary.sort_by! { |root| root.length }
    words = sentence.split
    words.each_with_index do |word, i|
        dictionary.each do |root|
            if word.index(root) == 0
                words[i] = root
                break
            end
        end
    end
    words.join(" ")
end

if __FILE__ == $PROGRAM_NAME
    p replace_words(dictionary = %w[catt cat bat rat], sentence = "the cattle was rattled by the battery")
end
