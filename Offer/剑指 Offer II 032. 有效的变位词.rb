# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 18:07
# FilePath: 剑指 Offer II 032. 有效的变位词.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s == t
    alphabet = Array.new(26, 0)
    s.each_char { |c| alphabet[c.ord - 97] += 1 }
    t.each_char { |c| alphabet[c.ord - 97] -= 1 }
    alphabet.all?(0)
end

if __FILE__ == $PROGRAM_NAME
    p is_anagram(s = "rat", t = "car")
end
