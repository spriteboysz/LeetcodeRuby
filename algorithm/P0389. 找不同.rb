# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 21:30
# FilePath: P0389. 找不同.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
    alphabet = Array.new(26, 0)
    t.each_char { |c| alphabet[c.ord - 97] += 1 }
    s.each_char { |c| alphabet[c.ord - 97] -= 1 }
    (alphabet.index(1) + 97).chr
end

if __FILE__ == $PROGRAM_NAME
    p find_the_difference(s = "abcd", t = "abcde")
    p find_the_difference(s = "a", t = "aa")
end
