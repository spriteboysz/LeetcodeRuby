# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-16 22:56
# FilePath: P2839. 判断通过操作能否让字符串相等 I.rb
# Description:

load "common/leetcode.rb"

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def can_be_equal(s1, s2)
    hash1, hash2 = Hash.new(0), Hash.new(0)
    s1.chars.each_with_index { |c, i|
        if i % 2 == 0
            hash1[c] += 1
        else
            hash2[c] += 1
        end
    }
    s2.chars.each_with_index { |c, i|
        if i % 2 == 0
            hash1[c] -= 1
        else
            hash2[c] -= 1
        end
    }
    hash1.values.all?(0) and hash2.values.all?(0)
end

if __FILE__ == $PROGRAM_NAME
    p can_be_equal(s1 = "abcd", s2 = "cdab")
end


