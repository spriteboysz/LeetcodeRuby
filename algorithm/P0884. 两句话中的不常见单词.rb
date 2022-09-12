# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 22:18
# FilePath: P0884. 两句话中的不常见单词.rb
# Description: 

# @param {String} s1
# @param {String} s2
# @return {String[]}
def uncommon_from_sentences(s1, s2)
    hash1, hash2 = Hash.new(0), Hash.new(0)
    s1.split(" ").each { |word| hash1[word] += 1 }
    s2.split(" ").each { |word| hash2[word] += 1 }
    [s1.split(" "), s2.split(" ")].flatten.select { |word|
        (hash1[word] == 1 and hash2[word] == 0) or (hash1[word] == 0 and hash2[word] == 1)
    }
end

p uncommon_from_sentences(s1 = "apple apple", s2 = "banana")



