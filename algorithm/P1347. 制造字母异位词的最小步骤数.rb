# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 22:27
# FilePath: P1347. 制造字母异位词的最小步骤数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
    alphabet = Array.new(26).fill(0)
    s.chars.each_with_index { |c, i|
        alphabet[c.ord - 'a'.ord] += 1
        alphabet[t[i].ord - 'a'.ord] -= 1
    }
    alphabet.sum { |num| num.abs } / 2
end

if __FILE__ == $PROGRAM_NAME
    p min_steps(s = "leetcode", t = "practice")
end


