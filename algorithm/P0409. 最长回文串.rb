# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:39
# FilePath: P0409. 最长回文串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def longest_palindrome(s)
    hash = Hash.new(0)
    s.each_char { |c| hash[c] += 1 }
    odd = hash.values.map(&:odd?).any?(true) ? 1 : 0
    hash.values.map { |num| num / 2 }.sum * 2 + odd
end

if __FILE__ == $PROGRAM_NAME
    p longest_palindrome(s = "abccccdd")
end
