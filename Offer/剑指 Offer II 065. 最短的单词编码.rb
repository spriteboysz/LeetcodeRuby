# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 20:03
# FilePath: 剑指 Offer II 065. 最短的单词编码.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Integer}
def minimum_length_encoding(words)
    cnt, n = 0, words.size
    words.sort_by! { |word| word.size }
    words.each_with_index { |word, i|
        flag = true
        (i + 1...n).each { |j|
            if words[j].end_with?(word)
                flag = false
                break
            end
        }
        cnt += word.size + 1 if flag
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p minimum_length_encoding(words = ["time", "me", "bell"])
end


