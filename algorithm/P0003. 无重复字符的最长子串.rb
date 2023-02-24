# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-24 21:06
# FilePath: P0003. 无重复字符的最长子串.rb
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
    p length_of_longest_substring(s = "pwwkew")
end


