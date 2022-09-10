# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:52
# FilePath: P2351. 第一个出现两次的字母.rb
# Description: 

# @param {String} s
# @return {Character}
def repeated_character(s)
    ss = ""
    s.chars.each do |c|
        return c if ss.count(c) > 0
        ss += c
    end
end

p repeated_character(s = "abcdd")



