# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:11
# FilePath: P0459. 重复的子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    ss = s + s
    !ss[1...-1].index(s).nil?
end

if __FILE__ == $PROGRAM_NAME
    p repeated_substring_pattern(s = "abcabcabcabc")
end
