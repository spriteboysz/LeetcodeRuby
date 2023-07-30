# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 19:52
# FilePath: P0820. 单词的压缩编码.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Integer}
def minimum_length_encoding(words)
    words.sort_by! { |word| word.size }
    cnt, n = 0, words.size
    words.each_with_index { |word, i|
        flag = false
        (i + 1...n).each { |j|
            if words[j].end_with?(word)
                flag = true
                break
            end
        }
        cnt += word.size + 1 unless flag
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p minimum_length_encoding(words = ["time", "me", "bell"])
end


