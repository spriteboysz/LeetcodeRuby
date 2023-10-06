# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:43
# FilePath: LCR 015. 找到字符串中所有字母异位词.rb
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
    p find_anagrams(s = "cbaebabacd", p = "abc")
end


