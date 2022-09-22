# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:59
# FilePath: P0125. 验证回文串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    ss = s.downcase.chars.select { |c|
        c.ord >= "a".ord && c.ord <= "z".ord || c.ord >= "0".ord && c.ord <= "9".ord
    }.join
    ss == ss.reverse
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(s = "A man, a plan, a canal: Panama")
    p is_palindrome("0P")
end
