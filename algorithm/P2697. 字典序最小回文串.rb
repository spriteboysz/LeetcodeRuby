# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 21:13
# FilePath: P2697. 字典序最小回文串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def make_smallest_palindrome(s)
    n = s.length
    s.chars.each_index { |i|
        break if i > n / 2
        s[i] = s[n - 1 - i] = [s[i], s[n - 1 - i]].min
    }
    s
end

if __FILE__ == $PROGRAM_NAME
    p make_smallest_palindrome(s = "egcfe")
end


