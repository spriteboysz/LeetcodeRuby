# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 00:01
# FilePath: P0242. 有效的字母异位词.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    counts = Array.new(26, 0)
    s.each_char { |c| counts[c.ord - 97] += 1 }
    t.each_char { |c| counts[c.ord - 97] -= 1 }
    counts.all?(0)
end

if __FILE__ == $PROGRAM_NAME
    p is_anagram(s = "anagram", t = "nagaram")
    p is_anagram(s = "rat", t = "car")
end
