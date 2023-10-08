# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:41
# FilePath: LCR 063. 单词替换.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} dictionary
# @param {String} sentence
# @return {String}
def replace_words(dictionary, sentence)
    hash = Hash.new
    dictionary.sort_by! { |root| root.size }
    words = sentence.split
    words.each_with_index { |word, i|
        if hash.include?(word)
            words[i] = hash[word]
        else
            dictionary.each { |root|
                if word.start_with?(root)
                    words[i] = root
                    hash[word] = root
                    break
                end
            }
        end
    }
    words.join(" ")
end

if __FILE__ == $PROGRAM_NAME
    p replace_words(dictionary = ["cat", "bat", "rat", "ca"], sentence = "the cattle was rattled by the battery")
end


