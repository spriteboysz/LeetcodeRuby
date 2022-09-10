# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:49
# FilePath: 剑指 Offer 58 - II. 左旋转字符串.rb
# Description: 

# @param {String} s
# @param {Integer} n
# @return {String}
def reverse_left_words(s, n)
    s[n..] + s[..n - 1]
end

# test
p reverse_left_words(s = "lrloseumgh", n = 6)

