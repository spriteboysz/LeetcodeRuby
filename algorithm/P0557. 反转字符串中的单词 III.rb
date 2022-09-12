# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 20:06
# FilePath: P0557. 反转字符串中的单词 III.rb
# Description: 

# @param {String} s
# @return {String}
def reverse_words(s)
    s.split(" ").map(&:reverse).join(" ")
end

p reverse_words(s = "Let's take LeetCode contest")



