# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 20:32
# FilePath: P1816. 截断句子.rb
# Description: 

# @param {String} s
# @param {Integer} k
# @return {String}
def truncate_sentence(s, k)
    s.split(" ")[..k - 1].join(" ")
end

p truncate_sentence(s = "What is the solution to this problem", k = 4)



