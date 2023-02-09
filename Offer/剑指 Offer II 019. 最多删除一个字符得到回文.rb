# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 23:37
# FilePath: 剑指 Offer II 019. 最多删除一个字符得到回文.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def valid_palindrome(s)
    r = s.reverse
    return true if s == r
    n = s.length
    n.times do |i|
        if s[i] != r[i]
            s1 = s[0...i] + s[i + 1...n]
            s2 = r[0...i] + r[i + 1...n]
            return s1 == s1.reverse || s2 == s2.reverse
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p valid_palindrome("abca")
end


