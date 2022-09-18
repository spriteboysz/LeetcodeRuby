# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 23:14
# FilePath: P0009. 回文数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x.to_s.reverse == x.to_s
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(x = -121)
    p is_palindrome(10)
end
