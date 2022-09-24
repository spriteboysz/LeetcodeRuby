# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 22:02
# FilePath: P0824. 山羊拉丁文.rb
# Description:

load "common/leetcode.rb"

# @param {String} sentence
# @return {String}
def to_goat_latin(sentence)
    words = sentence.split
    vowels = "aeiouAEIOU"
    words.each_with_index do |word, i|
        if vowels.include?(word[0])
            words[i] += "ma"
        else
            words[i] = word[1..] + word[0] + "ma"
        end
        words[i] += "a" * (i + 1)
    end
    words.join(" ")
end

if __FILE__ == $PROGRAM_NAME
    p to_goat_latin("The quick brown fox jumped over the lazy dog")
end
