# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:20
# FilePath: P2490. 回环句.rb
# Description:

load "common/leetcode.rb"

# @param {String} sentence
# @return {Boolean}
def is_circular_sentence(sentence)
    words = sentence.split(" ")
    words.each_with_index do |word, i|
        if i == words.length - 1
            return false if word[-1] != words[0][0]
        else
            return false if word[-1] != words[i + 1][0]
        end
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p is_circular_sentence(sentence = "leetcode exercises sound delightful")
end


