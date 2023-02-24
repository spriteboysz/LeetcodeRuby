# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-24 21:00
# FilePath: 剑指 Offer II 016. 不含重复字符的最长子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return s.length if s.length <= 1
    hash, left, maximum = Hash.new(0), -1, 0
    s.chars.each_with_index do |c, i|
        left = [left, hash[c]].max if hash.include?(c)
        hash[c] = i
        maximum = [maximum, i - left].max
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p length_of_longest_substring("abcabcbb")
end


