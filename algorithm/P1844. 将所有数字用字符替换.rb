# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:04
# FilePath: P1844. 将所有数字用字符替换.rb
# Description: 

# @param {String} s
# @return {String}
def replace_digits(s)
    ss = ""
    letters = s.chars
    (0...letters.length).step(2).each { |i|
        ss += letters[i]
        ss += (letters[i].ord + letters[i + 1].to_i).chr if i + 1 < letters.length
    }
    ss
end

p replace_digits(s = "a1b2c3d4e")



