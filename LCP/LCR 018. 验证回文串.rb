# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:45
# FilePath: LCR 018. 验证回文串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    ss = ""
    s.downcase.each_char { |c|
        ss += c if c.ord.between?(97, "z".ord) || c.ord.between?("0".ord, "9".ord)
    }
    ss == ss.reverse
end

if __FILE__ == $PROGRAM_NAME
    p is_palindrome(s = "A man, a plan, a canal: Panama")
end


