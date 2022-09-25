# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:21
# FilePath: 剑指 Offer II 018. 有效的回文.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    ss = ""
    s.downcase.each_char do |c|
        ss += c if c.ord >= 97 && c.ord <= "z".ord || c.ord >= "0".ord && c.ord <= "9".ord
    end
    ss.reverse == ss
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(s = "A man, a plan, a canal: Panama")
end
