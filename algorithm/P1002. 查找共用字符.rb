# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 22:26
# FilePath: P1002. 查找共用字符.rb
# Description: 

# @param {String[]} words
# @return {String[]}
def common_chars(words)
    hash = Hash.new(Array.new(26, 0))
    words.each { |word|
        word.chars.each { |c|
            hash[word] = hash[word][c.ord - 97] + 1
        }
    }
    common = []
    counts = Array.new(26, 101)
    p hash
    hash.each_pair { |k, v|
        (0...26).each { |i| counts[i] = v[i] if v[i] < counts[i] }
    }
    counts
end

p common_chars(words = %w[cool lock cook])



