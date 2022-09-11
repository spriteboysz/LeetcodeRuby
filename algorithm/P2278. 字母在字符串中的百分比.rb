# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:51
# FilePath: P2278. 字母在字符串中的百分比.rb
# Description: 

# @param {String} s
# @param {Character} letter
# @return {Integer}
def percentage_letter(s, letter)
    s.count(letter) * 100 / s.length
end

p percentage_letter(s = "foobar", letter = "o")
p percentage_letter(s = "unique", letter = "a")



