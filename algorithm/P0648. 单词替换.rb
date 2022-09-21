# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 23:59
# FilePath: P0648. 单词替换.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
    dictionary.sort_by! { |word| word.length }
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
    p replace_words(dictionary = %w[a b c], sentence = "aadsfasf absbs bbab cadsfafs")
end
