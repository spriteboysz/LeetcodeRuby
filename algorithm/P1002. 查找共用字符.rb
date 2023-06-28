# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 22:26
# FilePath: P1002. 查找共用字符.rb
# Description:

# @param {String[]} words
# @return {String[]}
def common_chars(words)
    alphabets = []
    words.each { |word|
        counts = Array.new(26, 0)
        word.chars.each { |c|
            counts[c.ord - 97] += 1
        }
        alphabets << counts
    }
    ss = ""
    alphabets.transpose.map(&:min).each_with_index { |num, i|
        ss += (i + 97).chr * num[0]
    }
    ss.chars
end

p common_chars(%w[cool lock cook])



