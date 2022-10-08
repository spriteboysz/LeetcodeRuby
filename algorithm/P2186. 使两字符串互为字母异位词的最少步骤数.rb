# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 20:43
# FilePath: P2186. 使两字符串互为字母异位词的最少步骤数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Integer}
def min_steps(s, t)
    alphabet = Hash.new(0)
    s.chars.each { |c| alphabet[c] += 1 }
    t.chars.each { |c| alphabet[c] -= 1 }
    alphabet.map { |_, v| v.abs }.sum
end

if __FILE__ == $PROGRAM_NAME
    p min_steps(s = "leetcode", t = "coats")
end
