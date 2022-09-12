# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 19:56
# FilePath: P1859. 将句子排序.rb
# Description: 

# @param {String} s
# @return {String}
def sort_sentence(s)
    hash = Hash.new("")
    s.split(" ").each { |word| hash[word[word.length - 1].to_i] = word[...word.length - 1] }
    ss = ""
    hash.sort.each { |item| ss += item[1] + " " }
    ss.strip
end

p sort_sentence(s = "Myself2 Me1 I4 and3")



