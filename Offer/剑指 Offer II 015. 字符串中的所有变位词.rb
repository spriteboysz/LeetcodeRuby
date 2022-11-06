# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 23:50
# FilePath: 剑指 Offer II 015. 字符串中的所有变位词.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
    alphabet = Array.new(26, 0)
    p.each_char do |c|
        alphabet[c.ord - 97] += 1
    end
    index = []
    cur = Array.new(26, 0)
    s[0, p.size].each_char do |c|
        cur[c.ord - 97] += 1
    end
    index << 0 if cur == alphabet

    (1..s.size - p.size).each do |i|
        cur[s[i - 1].ord - 97] -= 1
        cur[s[i + p.size - 1].ord - 97] += 1
        index << i if alphabet == cur
    end
    index
end

if __FILE__ == $PROGRAM_NAME
    p find_anagrams(s = "abab", p = "ab")
end
