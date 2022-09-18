# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 23:03
# FilePath: P1556. 千位分隔数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {String}
def thousand_separator(n)
    s = n.to_s.reverse.chars
    ss = ""
    s.each_with_index do |c, i|
        ss += c
        ss += "." if (i + 1) % 3 == 0 && (i + 1) != s.length
    end
    ss.reverse
end

if __FILE__ == $PROGRAM_NAME
    p thousand_separator(n = 123456)
end
