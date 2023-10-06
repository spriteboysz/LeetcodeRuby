# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:59
# FilePath: LCR 019. 验证回文串 II.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
    return true if s == s.reverse
    n = s.size
    (0...n / 2).each { |i|
        if s[i] != s[n - 1 - i]
            s1 = s[0...i] + s[i +1...n]
            s2 = s[0...n - 1 - i] + s[n - i...n]
            return s1 == s1.reverse || s2 == s2.reverse
        end
    }
    true
end

if __FILE__ == $PROGRAM_NAME
    p valid_palindrome(s = "aba")
    p valid_palindrome(s = "abca")
end


