# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:29
# FilePath: P1768. 交替合并字符串.rb
# Description: 

# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    n1, n2 = word1.length, word2.length
    ss, minimum = "", [n1, n2].min
    (0...minimum).each { |i| ss += word1[i] + word2[i] }
    ss += word1[minimum..] if n1 > n2
    ss += word2[minimum..] if n1 < n2
    ss
end

p merge_alternately(word1 = "abcd", word2 = "pq")



