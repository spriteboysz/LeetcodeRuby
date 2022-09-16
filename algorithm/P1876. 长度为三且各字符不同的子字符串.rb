# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 21:30
# FilePath: P1876. 长度为三且各字符不同的子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def count_good_substrings(s)
    cnt = 0
    s.chars.each_index { |i|
        next if i == 0 || i == 1
        next if s[i - 2] == s[i - 1] || s[i - 1] == s[i] || s[i - 2] == s[i]
        cnt += 1
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    s = "aababcabc"
    p count_good_substrings(s)
end
