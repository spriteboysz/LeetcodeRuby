# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:03
# FilePath: LCR 032. 有效的字母异位词.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s.size != t.size or s == t
    alphabet = Array.new(26, 0)
    (0...s.size).each { |i|
        alphabet[s[i].ord - 'a'.ord] += 1
        alphabet[t[i].ord - 'a'.ord] -= 1
    }
    alphabet.all?(0)
end

if __FILE__ == $PROGRAM_NAME
    p is_anagram(s = "anagram", t = "nagaram")
end


