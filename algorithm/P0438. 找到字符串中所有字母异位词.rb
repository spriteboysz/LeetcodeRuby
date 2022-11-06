# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 10:42
# FilePath: P0438. 找到字符串中所有字母异位词.rb
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
    index, n, m = [], s.size, p.size
    cur = Array.new(26, 0)
    s[0, m].each_char do |c|
        cur[c.ord - 97] += 1
    end
    index << 0 if cur == alphabet

    (1..n - m).each do |i|
        cur[s[i - 1].ord - 97] -= 1
        cur[s[i + m - 1].ord - 97] += 1
        index << i if alphabet == cur
    end
    index
end

if __FILE__ == $PROGRAM_NAME
    p find_anagrams(s = "abab", p = "ab")
end
