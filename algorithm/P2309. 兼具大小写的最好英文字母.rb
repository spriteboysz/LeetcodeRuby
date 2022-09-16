# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 22:48
# FilePath: P2309. 兼具大小写的最好英文字母.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def greatest_letter(s)
    alphabet = Array.new(26, 0)
    s.each_char { |c|
        alphabet[c.ord - 97] |= 1 if ("a".."z").cover?(c)
        alphabet[c.ord - 65] |= 2 if ("A".."Z").cover?(c)
    }
    alphabet.max < 3 ? "" : (alphabet.rindex(3) + 65).chr
end

if __FILE__ == $PROGRAM_NAME
    p greatest_letter(s = "arRAzFif")
    p greatest_letter(s = "AbCdEfGhIjK")
end
