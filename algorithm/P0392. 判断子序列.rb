# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:28
# FilePath: P0392. 判断子序列.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_subsequence(s, t)
    return true if s == "" || s == t
    i = 0
    t.each_char do |c|
        i += 1 if c == s[i]
        return true if i == s.length
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p is_subsequence(s = "abc", t = "ahbgdc")
    p is_subsequence("", "")
end
